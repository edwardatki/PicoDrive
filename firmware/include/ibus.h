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
#define PROTOCOL_COMMAND_CHANNELS 0x40

class IBus {
    public:
        IBus(uart_inst_t*, uint, uint);
        void update();
        uint32_t msSincePacket();
        uint16_t getChannel(uint);
    private:
        uart_inst_t* uart;
        uint16_t channels[PROTOCOL_CHANNELS];
        uint32_t last_packet_ms;
};

#endif