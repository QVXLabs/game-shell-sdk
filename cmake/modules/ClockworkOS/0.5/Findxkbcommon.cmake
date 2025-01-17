
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XKBCOMMON REQUIRED xkbcommon)

add_library(XKBCOMMON INTERFACE IMPORTED)
set_target_properties(XKBCOMMON PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XKBCOMMON_INCLUDE_DIRS}")
set_target_properties(XKBCOMMON PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XKBCOMMON_LIBRARY_DIRS}")
set_target_properties(XKBCOMMON PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XKBCOMMON_LIB_LIBRARIES}")
set_target_properties(XKBCOMMON PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XKBCOMMON_CFLAGS_OTHER}")
