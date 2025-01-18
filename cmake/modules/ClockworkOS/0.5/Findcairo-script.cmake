
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_SCRIPT REQUIRED cairo-script)

add_library(CAIRO_SCRIPT INTERFACE IMPORTED)
set_target_properties(CAIRO_SCRIPT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_SCRIPT_INCLUDE_DIRS}")
set_target_properties(CAIRO_SCRIPT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_SCRIPT_LIBRARY_DIRS}")
set_target_properties(CAIRO_SCRIPT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_SCRIPT_LIB_LIBRARIES}")
set_target_properties(CAIRO_SCRIPT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_SCRIPT_CFLAGS_OTHER}")
