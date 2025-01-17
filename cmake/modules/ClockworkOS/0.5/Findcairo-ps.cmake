
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_PS REQUIRED cairo-ps)

add_library(CAIRO_PS INTERFACE IMPORTED)
set_target_properties(CAIRO_PS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_PS_INCLUDE_DIRS}")
set_target_properties(CAIRO_PS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_PS_LIBRARY_DIRS}")
set_target_properties(CAIRO_PS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_PS_LIB_LIBRARIES}")
set_target_properties(CAIRO_PS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_PS_CFLAGS_OTHER}")
