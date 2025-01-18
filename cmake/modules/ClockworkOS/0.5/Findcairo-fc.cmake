
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_FC REQUIRED cairo-fc)

add_library(CAIRO_FC INTERFACE IMPORTED)
set_target_properties(CAIRO_FC PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_FC_INCLUDE_DIRS}")
set_target_properties(CAIRO_FC PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_FC_LIBRARY_DIRS}")
set_target_properties(CAIRO_FC PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_FC_LIB_LIBRARIES}")
set_target_properties(CAIRO_FC PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_FC_CFLAGS_OTHER}")
