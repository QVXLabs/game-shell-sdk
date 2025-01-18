
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL REQUIRED sdl)

add_library(SDL INTERFACE IMPORTED)
set_target_properties(SDL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL_INCLUDE_DIRS}")
set_target_properties(SDL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL_LIBRARY_DIRS}")
set_target_properties(SDL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL_LIB_LIBRARIES}")
set_target_properties(SDL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL_CFLAGS_OTHER}")
