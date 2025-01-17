
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_SVG REQUIRED cairo-svg)

add_library(CAIRO_SVG INTERFACE IMPORTED)
set_target_properties(CAIRO_SVG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_SVG_INCLUDE_DIRS}")
set_target_properties(CAIRO_SVG PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_SVG_LIBRARY_DIRS}")
set_target_properties(CAIRO_SVG PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_SVG_LIB_LIBRARIES}")
set_target_properties(CAIRO_SVG PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_SVG_CFLAGS_OTHER}")
