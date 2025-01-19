
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL REQUIRED sdl)

add_library(sdl::sdl INTERFACE IMPORTED)
set_target_properties(sdl::sdl PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL_INCLUDE_DIRS}")
set_target_properties(sdl::sdl PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL_LIBRARY_DIRS}")
set_target_properties(sdl::sdl PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL_LIB_LIBRARIES}")
set_target_properties(sdl::sdl PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL_CFLAGS_OTHER}")
