cmake_minimum_required(VERSION 3.13.4)
project(05_Entfernungsmesser C)

set(CMAKE_C_STANDARD 99)

add_executable(05_Entfernungsmesser main.c)

target_link_libraries(05_Entfernungsmesser wiringPi)