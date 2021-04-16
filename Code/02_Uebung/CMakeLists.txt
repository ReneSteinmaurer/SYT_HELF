cmake_minimum_required(VERSION 3.13.4)
project(02_Uebung C)

set(CMAKE_C_STANDARD 99)

add_executable(02_Uebung main.c)

target_link_libraries(02_Uebung wiringPi)