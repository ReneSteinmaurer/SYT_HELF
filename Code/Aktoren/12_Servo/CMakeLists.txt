# cmake_minimum_required(VERSION <specify CMake version here>)
project(12_Servo C)

set(CMAKE_C_STANDARD 99)

add_executable(12_Servo main.c)

target_link_libraries(12_Servo wiringPi)