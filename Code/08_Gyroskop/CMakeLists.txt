cmake_minimum_required(VERSION 3.13.4)
project(08_Gyroskop C)

set(CMAKE_C_STANDARD 99)

add_executable(08_Gyroskop main.c)
target_link_libraries(08_Gyroskop wiringPi)