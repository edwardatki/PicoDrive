cmake_minimum_required(VERSION 3.4.3)

include(pico_sdk_import.cmake)

project(picodrive C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
pico_sdk_init()

add_executable(picodrive
    main.cpp
    include/ibus.cpp
)

target_include_directories(picodrive PUBLIC include/)

# Set stdio interface to USB
pico_enable_stdio_usb(picodrive 1)
pico_enable_stdio_uart(picodrive 0)

target_link_libraries(
    picodrive
    pico_stdlib
    pico_multicore
    hardware_adc
    hardware_pwm
)

pico_add_extra_outputs(picodrive)