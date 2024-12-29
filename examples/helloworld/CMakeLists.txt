cmake_minimum_required(VERSION 3.10)

project(HelloWorld VERSION 1.0 LANGUAGES C)

add_executable(helloworld helloworld.c)
set_property(TARGET helloworld PROPERTY C_STANDARD 11)
