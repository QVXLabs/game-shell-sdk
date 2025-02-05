
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL2 REQUIRED sdl2)

add_library(sdl2::sdl2 INTERFACE IMPORTED)
set_target_properties(sdl2::sdl2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL2_INCLUDE_DIRS}")
set_target_properties(sdl2::sdl2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL2_LIBRARY_DIRS}")
set_target_properties(sdl2::sdl2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL2_LIBRARIES}")
set_target_properties(sdl2::sdl2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL2_CFLAGS_OTHER}")
