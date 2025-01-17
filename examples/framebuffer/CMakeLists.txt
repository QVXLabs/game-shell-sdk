cmake_minimum_required(VERSION 3.10)

project(framebuffer VERSION 1.0 LANGUAGES CXX)

add_executable(framebuffer framebuffer.cpp)
set_property(TARGET framebuffer PROPERTY CXX_STANDARD 11)
