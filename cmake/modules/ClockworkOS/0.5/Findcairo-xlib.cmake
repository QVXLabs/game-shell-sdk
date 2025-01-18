
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_XLIB REQUIRED cairo-xlib)

add_library(CAIRO_XLIB INTERFACE IMPORTED)
set_target_properties(CAIRO_XLIB PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_XLIB_INCLUDE_DIRS}")
set_target_properties(CAIRO_XLIB PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_XLIB_LIBRARY_DIRS}")
set_target_properties(CAIRO_XLIB PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_XLIB_LIB_LIBRARIES}")
set_target_properties(CAIRO_XLIB PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_XLIB_CFLAGS_OTHER}")
