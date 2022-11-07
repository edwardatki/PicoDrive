#ifndef SERVO_H
#define SERVO_H

#include "hardware/pwm.h"
#include "hardware/clocks.h"

#define WRAP 20000
#define PWM_FREQ 50

class Servo {
    public:
        Servo(uint pin) {
            this->pwm_pin = pin;
            gpio_set_function(this->pwm_pin, GPIO_FUNC_PWM);

            // Set 50Hz and wrap in ms
            uint pwm_slice = pwm_gpio_to_slice_num(this->pwm_pin);
            float clkdiv = (float)clock_get_hz(clk_sys) / (float)(WRAP*PWM_FREQ);
            pwm_set_clkdiv(pwm_slice, clkdiv);
            pwm_set_wrap(pwm_slice, 2000);
            pwm_set_chan_level(pwm_slice, PWM_CHAN_A, 0);
        }

        // 0 <= Value <= 1000
        void set_value(int value) {
            if (!this->enabled) this->enable();
            value += 1000;
            if (value < 1000) value = 1000;
            else if (value > 2000) value = 2000;
            pwm_set_gpio_level(this->pwm_pin, value);
        }

        void enable() {
            pwm_set_enabled(pwm_gpio_to_slice_num(this->pwm_pin), true);
        }

        void disable() {
            pwm_set_enabled(pwm_gpio_to_slice_num(this->pwm_pin), false);
        }
    private:
        bool enabled = false;
        uint pwm_pin;
};

#endif