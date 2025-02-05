
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_FC REQUIRED cairo-fc)

add_library(cairo_fc::cairo_fc INTERFACE IMPORTED)
set_target_properties(cairo_fc::cairo_fc PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_FC_INCLUDE_DIRS}")
set_target_properties(cairo_fc::cairo_fc PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_FC_LIBRARY_DIRS}")
set_target_properties(cairo_fc::cairo_fc PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_FC_LIBRARIES}")
set_target_properties(cairo_fc::cairo_fc PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_FC_CFLAGS_OTHER}")
