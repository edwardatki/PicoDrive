#include <stdio.h>
// #include <stdlib.h>
#include "pico/stdlib.h"
#include "pico/bootrom.h"
#include "hardware/gpio.h"
#include "hardware/adc.h"
#include "hardware/watchdog.h"
#include "pico/multicore.h"
#include "tusb.h"
#include "motor.h"
#include "servo.h"
#include "ibus.h"

const uint BUILT_IN_LED_PIN = 17;
const uint BAT_VOLTAGE_PIN = 27;
const uint USB_VOLTAGE_PIN = 28;
const uint MOT_1A_PIN = 6;
const uint MOT_1B_PIN = 7;
const uint MOT_2A_PIN = 4;
const uint MOT_2B_PIN = 5;
const uint MOT_3A_PIN = 2;
const uint MOT_3B_PIN = 3;
const uint IO_1_PIN = 12;
const uint IO_2_PIN = 11;

const float max_voltage = 11.0;
const float cutoff_voltages[] = {0, 3.75, 7.45};
uint battery_cells = 0;

IBus ibus(uart0, 0, 1);

Motor motor_1(MOT_1A_PIN, MOT_1B_PIN);
Motor motor_2(MOT_2A_PIN, MOT_2B_PIN);
Motor motor_3(MOT_3A_PIN, MOT_3B_PIN);
Servo servo_1(IO_1_PIN);

void core1_entry() {
    while (!stdio_usb_connected()) sleep_ms(100);
    while (1) {
        printf("\n    ____   _               ____         _            \n"
                "   / __ \\ (_)_____ ____   / __ \\ _____ (_)_   __ ___ \n"
                "  / /_/ // // ___// __ \\ / / / // ___// /| | / // _ \\\n"
                " / ____// // /__ / /_/ // /_/ // /   / / | |/ //  __/\n"
                "/_/    /_/ \\___/ \\____//_____//_/   /_/  |___/ \\___/ \n\n");
        printf("1 - Motor 1 settings\n");
        printf("2 - Motor 2 settings\n");
        printf("3 - Motor 3 settings\n");
        printf("4 - IO 1 settings\n");
        printf("5 - IO 2 settings\n");
        printf("6 - Debug display\n");
        printf("7 - Reboot\n");
        printf("8 - Reboot into bootloader\n");
        bool valid_input = false;
        do {
            switch (getchar()) {
                case '1':
                    // Motor 1 settings
                    printf("\nMotor 1 settings:\n");
                    printf("0 - Back\n");
                    getchar();
                    valid_input = true;
                    break;
                case '2':
                    // Motor 2 settings
                    printf("\nMotor 2 settings:\n");
                    printf("0 - Back\n");
                    getchar();
                    valid_input = true;
                    break;
                case '3':
                    // Motor 3 settings
                    printf("\nMotor 3 settings:\n");
                    printf("0 - Back\n");
                    getchar();
                    valid_input = true;
                    break;
                case '4':
                    // IO 1 settings
                    printf("\nIO 1 settings:\n");
                    printf("0 - Back\n");
                    getchar();
                    valid_input = true;
                    break;
                case '5':
                    // IO 2 settings
                    printf("\nIO 2 settings:\n");
                    printf("0 - Back\n");
                    getchar();
                    valid_input = true;
                    break;
                case '6':
                    // Display values
                    printf("\nDebug display:\n");
                    printf("0 - Back\n");
                    getchar();
                    valid_input = true;
                    break;
                case 'r':
                case '7':
                    // Reboot
                    printf("Rebooting...\n");
                    watchdog_enable(1, 1);
                    while (1) tight_loop_contents();
                    break;
                case 'b':
                case '8':
                    // Reboot into bootloader
                    printf("Rebooting...\n");
                    reset_usb_boot(1<<BUILT_IN_LED_PIN, 0); 
                    break;
                default:
                    break;
            }
        } while (!valid_input);
    }
}

// 0 -> 0.28
// 1.92 -> 2.15
float get_bat_voltage() {
    adc_select_input(1);
    const float conversionFactor = 3.3f / (1 << 12);
    float voltage = ((float)adc_read() * conversionFactor);
    if (voltage < 0) voltage = 0;
    return 4.3*voltage;
}

int main() {
    stdio_init_all();

    // Init ADC
    adc_init();
    adc_gpio_init(BAT_VOLTAGE_PIN);

    // Error on PCB makes this nescessary for
    // accurate battery voltage readings
    gpio_init(USB_VOLTAGE_PIN);
    gpio_set_dir(USB_VOLTAGE_PIN, GPIO_OUT);
    gpio_put(USB_VOLTAGE_PIN, 0);

    // Get battery voltage
    float initial_bat_voltage = get_bat_voltage();
    ibus.addSensor(IBus::SENSOR_INTV, 1);
    
    // Check we aren't about to fry the motor drivers
    if (initial_bat_voltage > max_voltage) {
        while (1) {
            printf("OVERVOLTAGE! %.2fV\n", initial_bat_voltage);
            sleep_ms(500);
        };
    }

    // Determine lipo cell count
    for(size_t i = 0; i < sizeof(cutoff_voltages)/sizeof(cutoff_voltages[0]); i++) {
        if (initial_bat_voltage > cutoff_voltages[i]) battery_cells = i;
    }

    // Flash start up sequence
    gpio_init(BUILT_IN_LED_PIN);
    gpio_set_dir(BUILT_IN_LED_PIN, GPIO_OUT);
    gpio_put(BUILT_IN_LED_PIN, 1);
    sleep_ms(300);
    gpio_put(BUILT_IN_LED_PIN, 0);
    sleep_ms(300);
    for (size_t i = 0; i < battery_cells; i++) {
        gpio_put(BUILT_IN_LED_PIN, 1);
        sleep_ms(100);
        gpio_put(BUILT_IN_LED_PIN, 0);
        sleep_ms(100);
    }

    multicore_launch_core1(core1_entry);

    initial_bat_voltage = get_bat_voltage();

    uint i = 0;
    while (1) {
        // Read battery voltage and update telemetry
        float battery_voltage = get_bat_voltage();
        ibus.setSensor(0, battery_voltage/100);

        // Check if battery has reached discharge limit
        if (battery_voltage < cutoff_voltages[battery_cells]) {
            gpio_put(BUILT_IN_LED_PIN, 0);
            motor_1.set_speed(0);
            motor_2.set_speed(0);
            motor_3.set_speed(0);
            servo_1.set_value(0);
            while (1) {
                printf("BATTERY CUTOFF! %.2fV\n", battery_voltage);
                gpio_put(BUILT_IN_LED_PIN, 1);
                sleep_ms(250);
                gpio_put(BUILT_IN_LED_PIN, 0);
                sleep_ms(250);
            }
        }

        ibus.update();
        if (ibus.msSincePacket() < 10) {
            gpio_put(BUILT_IN_LED_PIN, 1);
            motor_1.set_speed(ibus.channels[0]-1500);
            motor_2.set_speed(ibus.channels[1]-1500);
            motor_3.set_speed(ibus.channels[3]-1500);
            servo_1.set_value(ibus.channels[2]-1000);
        }
        else {
            gpio_put(BUILT_IN_LED_PIN, 0);
            motor_1.set_speed(0);
            motor_2.set_speed(0);
            motor_3.set_speed(0);
            servo_1.set_value(0);
        }
    }
}
