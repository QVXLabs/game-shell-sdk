
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL2 REQUIRED sdl2)

add_library(SDL2 INTERFACE IMPORTED)
set_target_properties(SDL2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL2_INCLUDE_DIRS}")
set_target_properties(SDL2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL2_LIBRARY_DIRS}")
set_target_properties(SDL2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL2_LIB_LIBRARIES}")
set_target_properties(SDL2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL2_CFLAGS_OTHER}")
