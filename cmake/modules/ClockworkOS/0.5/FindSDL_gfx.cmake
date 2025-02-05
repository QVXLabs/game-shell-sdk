
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL_GFX REQUIRED SDL_gfx)

add_library(SDL_gfx::SDL_gfx INTERFACE IMPORTED)
set_target_properties(SDL_gfx::SDL_gfx PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL_GFX_INCLUDE_DIRS}")
set_target_properties(SDL_gfx::SDL_gfx PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL_GFX_LIBRARY_DIRS}")
set_target_properties(SDL_gfx::SDL_gfx PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL_GFX_LIBRARIES}")
set_target_properties(SDL_gfx::SDL_gfx PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL_GFX_CFLAGS_OTHER}")
