
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBCONFIG REQUIRED libconfig)

add_library(LIBCONFIG INTERFACE IMPORTED)
set_target_properties(LIBCONFIG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBCONFIG_INCLUDE_DIRS}")
set_target_properties(LIBCONFIG PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBCONFIG_LIBRARY_DIRS}")
set_target_properties(LIBCONFIG PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBCONFIG_LIB_LIBRARIES}")
set_target_properties(LIBCONFIG PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBCONFIG_CFLAGS_OTHER}")
