
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO REQUIRED cairo)

add_library(cairo::cairo INTERFACE IMPORTED)
set_target_properties(cairo::cairo PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_INCLUDE_DIRS}")
set_target_properties(cairo::cairo PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_LIBRARY_DIRS}")
set_target_properties(cairo::cairo PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_LIBRARIES}")
set_target_properties(cairo::cairo PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_CFLAGS_OTHER}")
