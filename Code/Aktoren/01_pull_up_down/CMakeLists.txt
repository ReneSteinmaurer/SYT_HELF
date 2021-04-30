cmake_minimum_required(VERSION 3.13.4)
project(01_pull_up_down C)

set(CMAKE_C_STANDARD 99)

add_executable(01_pull_up_down main.c)
target_link_libraries(01_pull_up_down wiringPi)