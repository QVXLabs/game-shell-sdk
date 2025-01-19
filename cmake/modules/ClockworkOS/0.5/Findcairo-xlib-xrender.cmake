
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_XLIB_XRENDER REQUIRED cairo-xlib-xrender)

add_library(cairo_xlib_xrender::cairo_xlib_xrender INTERFACE IMPORTED)
set_target_properties(cairo_xlib_xrender::cairo_xlib_xrender PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_XLIB_XRENDER_INCLUDE_DIRS}")
set_target_properties(cairo_xlib_xrender::cairo_xlib_xrender PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_XLIB_XRENDER_LIBRARY_DIRS}")
set_target_properties(cairo_xlib_xrender::cairo_xlib_xrender PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_XLIB_XRENDER_LIB_LIBRARIES}")
set_target_properties(cairo_xlib_xrender::cairo_xlib_xrender PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_XLIB_XRENDER_CFLAGS_OTHER}")
