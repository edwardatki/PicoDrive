#include "ibus.h"
#include "stdio.h"

IBus::IBus(uart_inst_t* uart_instance, uint pinTx, uint pinRx) {
    this->uart = uart_instance;
    uart_init(this->uart, 115200);
    uart_set_format(this->uart, 8, 1, UART_PARITY_NONE);
    uart_set_hw_flow(this->uart, false, false);
    
    gpio_set_function(0, GPIO_FUNC_UART);
    gpio_set_function(1, GPIO_FUNC_UART);
}

void IBus::update() {
    enum State {GET_LENGTH, GET_DATA, GET_CHKSUML, GET_CHKSUMH, DISCARD};

    static uint32_t last_byte_ms;
    static State state;
    static uint8_t buffer[PROTOCOL_LENGTH];     // message buffer
    static uint8_t ptr;                         // pointer in buffer
    static uint8_t length;                      // message length
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
                    }
                    last_packet_ms = to_ms_since_boot(get_absolute_time());;
                }
                state = DISCARD;
                break;

        default:
            break;
        }
    }
}

uint32_t IBus::msSincePacket() {
    return to_ms_since_boot(get_absolute_time())-last_packet_ms;
}

uint16_t IBus::getChannel(uint index) {
    return channels[index];
} 