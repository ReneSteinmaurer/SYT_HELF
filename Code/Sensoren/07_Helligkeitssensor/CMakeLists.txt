cmake_minimum_required(VERSION 3.13.4)
project(07_Helligkeitssensor C)

set(CMAKE_C_STANDARD 99)

add_executable(07_Helligkeitssensor main.c)
target_link_libraries(07_Helligkeitssensor wiringPi)