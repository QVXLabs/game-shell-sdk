
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL_IMAGE REQUIRED SDL_image)

add_library(SDL_image::SDL_image INTERFACE IMPORTED)
set_target_properties(SDL_image::SDL_image PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL_IMAGE_INCLUDE_DIRS}")
set_target_properties(SDL_image::SDL_image PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL_IMAGE_LIBRARY_DIRS}")
set_target_properties(SDL_image::SDL_image PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL_IMAGE_LIB_LIBRARIES}")
set_target_properties(SDL_image::SDL_image PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL_IMAGE_CFLAGS_OTHER}")
