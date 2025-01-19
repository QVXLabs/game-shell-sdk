
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_XCB REQUIRED cairo-xcb)

add_library(cairo_xcb::cairo_xcb INTERFACE IMPORTED)
set_target_properties(cairo_xcb::cairo_xcb PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_XCB_INCLUDE_DIRS}")
set_target_properties(cairo_xcb::cairo_xcb PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_XCB_LIBRARY_DIRS}")
set_target_properties(cairo_xcb::cairo_xcb PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_XCB_LIB_LIBRARIES}")
set_target_properties(cairo_xcb::cairo_xcb PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_XCB_CFLAGS_OTHER}")
