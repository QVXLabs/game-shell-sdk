
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_PNG REQUIRED cairo-png)

add_library(cairo_png::cairo_png INTERFACE IMPORTED)
set_target_properties(cairo_png::cairo_png PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_PNG_INCLUDE_DIRS}")
set_target_properties(cairo_png::cairo_png PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_PNG_LIBRARY_DIRS}")
set_target_properties(cairo_png::cairo_png PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_PNG_LIBRARIES}")
set_target_properties(cairo_png::cairo_png PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_PNG_CFLAGS_OTHER}")
