
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO REQUIRED cairo)

add_library(CAIRO INTERFACE IMPORTED)
set_target_properties(CAIRO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_INCLUDE_DIRS}")
set_target_properties(CAIRO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_LIBRARY_DIRS}")
set_target_properties(CAIRO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_LIB_LIBRARIES}")
set_target_properties(CAIRO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_CFLAGS_OTHER}")
