
find_package(PkgConfig REQUIRED)

pkg_check_modules(SDL2_GFX REQUIRED SDL2_gfx)

add_library(SDL2_gfx::SDL2_gfx INTERFACE IMPORTED)
set_target_properties(SDL2_gfx::SDL2_gfx PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SDL2_GFX_INCLUDE_DIRS}")
set_target_properties(SDL2_gfx::SDL2_gfx PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SDL2_GFX_LIBRARY_DIRS}")
set_target_properties(SDL2_gfx::SDL2_gfx PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SDL2_GFX_LIB_LIBRARIES}")
set_target_properties(SDL2_gfx::SDL2_gfx PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SDL2_GFX_CFLAGS_OTHER}")
