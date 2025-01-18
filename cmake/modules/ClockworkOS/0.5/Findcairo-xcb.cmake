
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_XCB REQUIRED cairo-xcb)

add_library(CAIRO_XCB INTERFACE IMPORTED)
set_target_properties(CAIRO_XCB PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_XCB_INCLUDE_DIRS}")
set_target_properties(CAIRO_XCB PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_XCB_LIBRARY_DIRS}")
set_target_properties(CAIRO_XCB PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_XCB_LIB_LIBRARIES}")
set_target_properties(CAIRO_XCB PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_XCB_CFLAGS_OTHER}")
