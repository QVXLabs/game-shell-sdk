
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_GOBJECT REQUIRED cairo-gobject)

add_library(CAIRO_GOBJECT INTERFACE IMPORTED)
set_target_properties(CAIRO_GOBJECT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_GOBJECT_INCLUDE_DIRS}")
set_target_properties(CAIRO_GOBJECT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_GOBJECT_LIBRARY_DIRS}")
set_target_properties(CAIRO_GOBJECT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_GOBJECT_LIB_LIBRARIES}")
set_target_properties(CAIRO_GOBJECT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_GOBJECT_CFLAGS_OTHER}")
