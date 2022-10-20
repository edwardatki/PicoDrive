#ifndef IBUS_H
#define IBUS_H

#include "pico/stdlib.h"
#include "hardware/gpio.h"
#include "hardware/uart.h"
#include "hardware/timer.h"

#define PROTOCOL_LENGTH 0x20
#define PROTOCOL_OVERHEAD 3             // packet is <len><cmd><data....><chkl><chkh>, overhead=cmd+chk bytes
#define PROTOCOL_TIMEGAP 3              // Packets are received evry ~7ms so use ~half that for the gap
#define PROTOCOL_CHANNELS 14
#define PROTOCOL_COMMAND_CHANNELS 0x40  // Command to channels
#define PROTOCOL_COMMAND_DISCOVER 0x80  // Command to discover sensor (lowest 4 bits are sensor)
#define PROTOCOL_COMMAND_TYPE 0x90      // Command to discover sensor (lowest 4 bits are sensor)
#define PROTOCOL_COMMAND_VALUE 0xA0     // Command send sensor data (lowest 4 bits are sensor)
#define SENSORMAX 10                    // Max number of sensors

class IBus {
    public:
        uint16_t channels[PROTOCOL_CHANNELS];

        enum SensorType {SENSOR_INTV=0x00, SENSOR_TEMP=0x01, SENSOR_RPM=0x02, SENSOR_EXTV=0x03, SENSOR_PRESS=0x41, SENSOR_SERVO=0xfd};

        IBus(uart_inst_t*, uint, uint);
        void update();
        uint32_t msSincePacket();
        uint8_t addSensor(SensorType, uint8_t);
        void setSensor(uint8_t, uint16_t);
        
    private:
        enum State {GET_LENGTH, GET_DATA, GET_CHKSUML, GET_CHKSUMH, DISCARD};

        uart_inst_t* uart;

        uint32_t last_packet_ms;

        typedef struct {
            uint8_t type;             // sensor type (0,1,2,3, etc)
            uint8_t length;           // data length for defined sensor (can be 2 or 4)
            int32_t value;            // sensor data for defined sensors (16 or 32 bits)
        } sensorInfo;
        sensorInfo sensors[SENSORMAX];
        uint8_t sensorCount = 0;
};

#endif