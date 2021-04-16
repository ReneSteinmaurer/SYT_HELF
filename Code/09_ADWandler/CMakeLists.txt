cmake_minimum_required(VERSION 3.13)
project(09_ADWandler C)

set(CMAKE_C_STANDARD 99)

add_executable(09_ADWandler main.c)
target_link_libraries(09_ADWandler wiringPi)