
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_GOBJECT REQUIRED cairo-gobject)

add_library(cairo_gobject::cairo_gobject INTERFACE IMPORTED)
set_target_properties(cairo_gobject::cairo_gobject PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_GOBJECT_INCLUDE_DIRS}")
set_target_properties(cairo_gobject::cairo_gobject PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_GOBJECT_LIBRARY_DIRS}")
set_target_properties(cairo_gobject::cairo_gobject PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_GOBJECT_LIB_LIBRARIES}")
set_target_properties(cairo_gobject::cairo_gobject PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_GOBJECT_CFLAGS_OTHER}")
