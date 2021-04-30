# cmake_minimum_required(VERSION <specify CMake version here>)
cmake_minimum_required(VERSION 3.13.4)

project(10_DC_Motor C)

set(CMAKE_C_STANDARD 99)

add_executable(10_DC_Motor main.c)

target_link_libraries(10_DC_Motor wiringPi)