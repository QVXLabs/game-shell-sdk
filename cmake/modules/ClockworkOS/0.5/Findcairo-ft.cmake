
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_FT REQUIRED cairo-ft)

add_library(cairo_ft::cairo_ft INTERFACE IMPORTED)
set_target_properties(cairo_ft::cairo_ft PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_FT_INCLUDE_DIRS}")
set_target_properties(cairo_ft::cairo_ft PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_FT_LIBRARY_DIRS}")
set_target_properties(cairo_ft::cairo_ft PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_FT_LIBRARIES}")
set_target_properties(cairo_ft::cairo_ft PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_FT_CFLAGS_OTHER}")
