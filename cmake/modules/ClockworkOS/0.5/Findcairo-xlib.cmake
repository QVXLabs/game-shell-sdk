
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_XLIB REQUIRED cairo-xlib)

add_library(cairo_xlib::cairo_xlib INTERFACE IMPORTED)
set_target_properties(cairo_xlib::cairo_xlib PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_XLIB_INCLUDE_DIRS}")
set_target_properties(cairo_xlib::cairo_xlib PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_XLIB_LIBRARY_DIRS}")
set_target_properties(cairo_xlib::cairo_xlib PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_XLIB_LIB_LIBRARIES}")
set_target_properties(cairo_xlib::cairo_xlib PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_XLIB_CFLAGS_OTHER}")
