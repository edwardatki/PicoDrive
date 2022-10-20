#ifndef MOTOR_H
#define MOTOR_H

#include "hardware/pwm.h"

class Motor {
    public:
        Motor(uint pin_a, uint pin_b) {
            gpio_set_function(pin_a, GPIO_FUNC_PWM);
            gpio_set_function(pin_b, GPIO_FUNC_PWM);

            this->pwm_slice = pwm_gpio_to_slice_num(pin_a);

            pwm_set_wrap(this->pwm_slice, 500);
            pwm_set_chan_level(this->pwm_slice, PWM_CHAN_A, 0);
            pwm_set_chan_level(this->pwm_slice, PWM_CHAN_B, 0);
            pwm_set_enabled(this->pwm_slice, true);
        }

        // -500 <= Speed <= 500
        void set_speed(int speed) {
            if (speed == 0) {
                pwm_set_chan_level(this->pwm_slice, PWM_CHAN_A, 500);
                pwm_set_chan_level(this->pwm_slice, PWM_CHAN_B, 500);
            } else if (speed > 0) {
                if (speed > 500) speed = 500;
                pwm_set_chan_level(this->pwm_slice, PWM_CHAN_A, 500);
                pwm_set_chan_level(this->pwm_slice, PWM_CHAN_B, 500-speed);
            } else if (speed < 0) {
                if (speed < -500) speed = -500;
                pwm_set_chan_level(this->pwm_slice, PWM_CHAN_A, 500+speed);
                pwm_set_chan_level(this->pwm_slice, PWM_CHAN_B, 500);
            }
        }
    private:
        uint pwm_slice;
};

#endif