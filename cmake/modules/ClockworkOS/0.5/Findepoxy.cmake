
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(EPOXY REQUIRED epoxy)

add_library(EPOXY INTERFACE IMPORTED)
set_target_properties(EPOXY PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${EPOXY_INCLUDE_DIRS}")
set_target_properties(EPOXY PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${EPOXY_LIBRARY_DIRS}")
set_target_properties(EPOXY PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${EPOXY_LIB_LIBRARIES}")
set_target_properties(EPOXY PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${EPOXY_CFLAGS_OTHER}")
