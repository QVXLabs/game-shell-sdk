
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL2_IMAGE REQUIRED SDL2_image)

add_library(SDL2_image::SDL2_image INTERFACE IMPORTED)
set_target_properties(SDL2_image::SDL2_image PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL2_IMAGE_INCLUDE_DIRS}")
set_target_properties(SDL2_image::SDL2_image PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL2_IMAGE_LIBRARY_DIRS}")
set_target_properties(SDL2_image::SDL2_image PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL2_IMAGE_LIBRARIES}")
set_target_properties(SDL2_image::SDL2_image PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL2_IMAGE_CFLAGS_OTHER}")
