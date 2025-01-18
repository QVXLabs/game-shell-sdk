
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XDAMAGE REQUIRED xdamage)

add_library(XDAMAGE INTERFACE IMPORTED)
set_target_properties(XDAMAGE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XDAMAGE_INCLUDE_DIRS}")
set_target_properties(XDAMAGE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XDAMAGE_LIBRARY_DIRS}")
set_target_properties(XDAMAGE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XDAMAGE_LIB_LIBRARIES}")
set_target_properties(XDAMAGE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XDAMAGE_CFLAGS_OTHER}")
