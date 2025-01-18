
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL_IMAGE REQUIRED SDL_image)

add_library(SDL_IMAGE INTERFACE IMPORTED)
set_target_properties(SDL_IMAGE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL_IMAGE_INCLUDE_DIRS}")
set_target_properties(SDL_IMAGE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL_IMAGE_LIBRARY_DIRS}")
set_target_properties(SDL_IMAGE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL_IMAGE_LIB_LIBRARIES}")
set_target_properties(SDL_IMAGE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL_IMAGE_CFLAGS_OTHER}")
