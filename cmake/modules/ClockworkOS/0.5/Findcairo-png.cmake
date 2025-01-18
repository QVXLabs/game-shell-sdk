
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_PNG REQUIRED cairo-png)

add_library(CAIRO_PNG INTERFACE IMPORTED)
set_target_properties(CAIRO_PNG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_PNG_INCLUDE_DIRS}")
set_target_properties(CAIRO_PNG PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_PNG_LIBRARY_DIRS}")
set_target_properties(CAIRO_PNG PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_PNG_LIB_LIBRARIES}")
set_target_properties(CAIRO_PNG PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_PNG_CFLAGS_OTHER}")
