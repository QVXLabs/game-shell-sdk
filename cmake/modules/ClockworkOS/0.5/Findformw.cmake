
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(FORMW REQUIRED formw)

add_library(FORMW INTERFACE IMPORTED)
set_target_properties(FORMW PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FORMW_INCLUDE_DIRS}")
set_target_properties(FORMW PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FORMW_LIBRARY_DIRS}")
set_target_properties(FORMW PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FORMW_LIB_LIBRARIES}")
set_target_properties(FORMW PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FORMW_CFLAGS_OTHER}")
