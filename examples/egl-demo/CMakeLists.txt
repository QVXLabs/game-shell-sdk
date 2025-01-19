cmake_minimum_required(VERSION 3.10)

project(egl-demo VERSION 1.0 LANGUAGES C)

find_package(egl REQUIRED)
find_package(x11 REQUIRED)
find_package(glesv2 REQUIRED)

add_executable(egl-demo egl-demo.c)
set_property(TARGET egl-demo PROPERTY C_STANDARD 11)
target_link_libraries(egl-demo x11::x11 egl::egl glesv2::glesv2 m)
