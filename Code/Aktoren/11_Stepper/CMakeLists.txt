cmake_minimum_required(VERSION 3.13)
project(11_Servo C)

set(CMAKE_C_STANDARD 99)

add_executable(11_Servo main.c)

target_link_libraries(11_Servo wiringPi)