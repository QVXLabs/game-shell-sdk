
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL2_IMAGE REQUIRED SDL2_image)

add_library(SDL2_IMAGE INTERFACE IMPORTED)
set_target_properties(SDL2_IMAGE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL2_IMAGE_INCLUDE_DIRS}")
set_target_properties(SDL2_IMAGE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL2_IMAGE_LIBRARY_DIRS}")
set_target_properties(SDL2_IMAGE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL2_IMAGE_LIB_LIBRARIES}")
set_target_properties(SDL2_IMAGE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL2_IMAGE_CFLAGS_OTHER}")
