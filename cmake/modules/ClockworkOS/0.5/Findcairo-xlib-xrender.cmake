
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_XLIB_XRENDER REQUIRED cairo-xlib-xrender)

add_library(CAIRO_XLIB_XRENDER INTERFACE IMPORTED)
set_target_properties(CAIRO_XLIB_XRENDER PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_XLIB_XRENDER_INCLUDE_DIRS}")
set_target_properties(CAIRO_XLIB_XRENDER PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_XLIB_XRENDER_LIBRARY_DIRS}")
set_target_properties(CAIRO_XLIB_XRENDER PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_XLIB_XRENDER_LIB_LIBRARIES}")
set_target_properties(CAIRO_XLIB_XRENDER PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_XLIB_XRENDER_CFLAGS_OTHER}")
