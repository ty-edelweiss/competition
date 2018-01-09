cmake_minimum_required(VERSION 3.8)
project(Competition)

add_definitions("-O2 -Wall -std=c++11")
add_executable(Competition main.cpp)
set_target_properties(Competition PROPERTIES OUTPUT_NAME bin/test.exe)
