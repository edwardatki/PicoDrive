#include "ibus.h"

IBus::IBus(uart_inst_t* uart_instance, uint pinTx, uint pinRx) {
    this->uart = uart_instance;
    uart_init(this->uart, 115200);
    uart_set_format(this->uart, 8, 1, UART_PARITY_NONE);
    uart_set_hw_flow(this->uart, false, false);
    
    gpio_set_function(0, GPIO_FUNC_UART);
    gpio_set_function(1, GPIO_FUNC_UART);
}

void IBus::update() {
    static uint32_t last_byte_ms;
    static State state;
    static uint8_t buffer[PROTOCOL_LENGTH];     // message buffer
    static uint8_t ptr;                         // pointer in buffer
    static uint8_t length;                         // message length
    static uint16_t chksum;                     // checksum calculation
    static uint8_t lchksum;                     // checksum lower byte received

    // Only consider a new data packet if we have not heard anything for >3ms
    if (uart_is_readable(uart)) {
        uint32_t now = to_ms_since_boot(get_absolute_time());
        if (now - last_byte_ms >= PROTOCOL_TIMEGAP){
            state = GET_LENGTH;
        }
        last_byte_ms = now;

        uint8_t byte = uart_getc(uart);
        switch (state) {
            case GET_LENGTH:
                if (byte <= PROTOCOL_LENGTH && byte > PROTOCOL_OVERHEAD) {
                    ptr = 0;
                    length = byte - PROTOCOL_OVERHEAD;
                    chksum = 0xFFFF - byte;
                    state = GET_DATA;
                } else {
                    state = DISCARD;
                }
                break;
            case GET_DATA:
                buffer[ptr++] = byte;
                chksum -= byte;
                if (ptr == length) {
                    state = GET_CHKSUML;
                }
                break;
                
            case GET_CHKSUML:
                lchksum = byte;
                state = GET_CHKSUMH;
                break;

            case GET_CHKSUMH:
                // Validate checksum
                if (chksum == (byte << 8) + lchksum) {
                    // Checksum is all fine so execute command
                    // Channel data command
                    if (buffer[0] == PROTOCOL_COMMAND_CHANNELS) {
                        // Valid channel command received - extract channel data
                        for (uint8_t i = 1; i < PROTOCOL_CHANNELS * 2 + 1; i += 2) {
                            channels[i / 2] = buffer[i] | (buffer[i + 1] << 8);
                        }
                    } else {
                        // Sensor commands
                        uint8_t address = buffer[0] & 0x0f;
                        if (address<=sensorCount && address>0 && length==1) {
                            sensorInfo *s = &sensors[address-1];

                            switch (buffer[0] & 0x00) {
                                case PROTOCOL_COMMAND_DISCOVER:
                                    uart_putc(uart, 0x04);
                                    uart_putc(uart, PROTOCOL_COMMAND_DISCOVER + address);
                                    chksum = 0xFFFF - (0x04 + PROTOCOL_COMMAND_DISCOVER + address);
                                case PROTOCOL_COMMAND_TYPE:
                                    uart_putc(uart, 0x06);
                                    uart_putc(uart, PROTOCOL_COMMAND_TYPE + address);
                                    uart_putc(uart, s->type);
                                    uart_putc(uart, s->length);
                                    chksum = 0xFFFF - (0x06 + PROTOCOL_COMMAND_TYPE + address + s->type + s->length);
                                    break;
                                default:
                                    break;
                            }       
                        }

                        if (address > 0) {
                            uart_putc(uart, chksum & 0x0ff);
                            uart_putc(uart, chksum >> 8);             
                        }
                    }
                    last_packet_ms = to_ms_since_boot(get_absolute_time());;
                }
                state = DISCARD;

        default:
            break;
        }
    }
}

uint32_t IBus::msSincePacket() {
    return to_ms_since_boot(get_absolute_time())-last_packet_ms;
}

uint8_t IBus::addSensor(SensorType type, uint8_t length) {
  // Add a sensor, return sensor number
  if (length!=2 && length!=4) length = 2;
  if (sensorCount < SENSORMAX) {
    sensorInfo *s = &sensors[sensorCount];
    s->type = type;
    s->length = length;
    s->value = 0;
    sensorCount++;
  }
  return sensorCount;
}

void IBus::setSensor(uint8_t address, uint16_t value) {
    if (address<=sensorCount && address>0) sensors[address-1].value = value;
}