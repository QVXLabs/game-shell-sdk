
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLIB_2.0 REQUIRED glib-2.0)

add_library(GLIB_2.0 INTERFACE IMPORTED)
set_target_properties(GLIB_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLIB_2.0_INCLUDE_DIRS}")
set_target_properties(GLIB_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLIB_2.0_LIBRARY_DIRS}")
set_target_properties(GLIB_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLIB_2.0_LIB_LIBRARIES}")
set_target_properties(GLIB_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLIB_2.0_CFLAGS_OTHER}")
