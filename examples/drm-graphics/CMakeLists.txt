cmake_minimum_required(VERSION 3.10)

project(drm-graphics VERSION 1.0 LANGUAGES C)

find_package(libdrm REQUIRED)

add_executable(drm-graphics drm-graphics.c)
set_property(TARGET drm-graphics PROPERTY C_STANDARD 11)
target_link_libraries(drm-graphics LIBDRM)
