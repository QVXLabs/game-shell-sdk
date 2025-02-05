
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL_TTF REQUIRED SDL_ttf)

add_library(SDL_ttf::SDL_ttf INTERFACE IMPORTED)
set_target_properties(SDL_ttf::SDL_ttf PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL_TTF_INCLUDE_DIRS}")
set_target_properties(SDL_ttf::SDL_ttf PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL_TTF_LIBRARY_DIRS}")
set_target_properties(SDL_ttf::SDL_ttf PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL_TTF_LIBRARIES}")
set_target_properties(SDL_ttf::SDL_ttf PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL_TTF_CFLAGS_OTHER}")
