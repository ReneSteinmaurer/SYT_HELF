cmake_minimum_required(VERSION 3.13)
project(06_Luftdrucksensor C)

set(CMAKE_C_STANDARD 99)

add_executable(06_Luftdrucksensor main.c)

target_link_libraries(06_Luftdrucksensor wiringPi)