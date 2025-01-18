
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_FT REQUIRED cairo-ft)

add_library(CAIRO_FT INTERFACE IMPORTED)
set_target_properties(CAIRO_FT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_FT_INCLUDE_DIRS}")
set_target_properties(CAIRO_FT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_FT_LIBRARY_DIRS}")
set_target_properties(CAIRO_FT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_FT_LIB_LIBRARIES}")
set_target_properties(CAIRO_FT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_FT_CFLAGS_OTHER}")
