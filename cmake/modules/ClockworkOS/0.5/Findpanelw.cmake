
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANELW REQUIRED panelw)

add_library(PANELW INTERFACE IMPORTED)
set_target_properties(PANELW PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANELW_INCLUDE_DIRS}")
set_target_properties(PANELW PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANELW_LIBRARY_DIRS}")
set_target_properties(PANELW PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANELW_LIB_LIBRARIES}")
set_target_properties(PANELW PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANELW_CFLAGS_OTHER}")
