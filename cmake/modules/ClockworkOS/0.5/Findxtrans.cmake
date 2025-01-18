
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XTRANS REQUIRED xtrans)

add_library(XTRANS INTERFACE IMPORTED)
set_target_properties(XTRANS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XTRANS_INCLUDE_DIRS}")
set_target_properties(XTRANS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XTRANS_LIBRARY_DIRS}")
set_target_properties(XTRANS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XTRANS_LIB_LIBRARIES}")
set_target_properties(XTRANS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XTRANS_CFLAGS_OTHER}")
