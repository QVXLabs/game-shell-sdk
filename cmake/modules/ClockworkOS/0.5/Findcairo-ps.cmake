
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_PS REQUIRED cairo-ps)

add_library(cairo_ps::cairo_ps INTERFACE IMPORTED)
set_target_properties(cairo_ps::cairo_ps PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_PS_INCLUDE_DIRS}")
set_target_properties(cairo_ps::cairo_ps PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_PS_LIBRARY_DIRS}")
set_target_properties(cairo_ps::cairo_ps PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_PS_LIBRARIES}")
set_target_properties(cairo_ps::cairo_ps PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_PS_CFLAGS_OTHER}")
