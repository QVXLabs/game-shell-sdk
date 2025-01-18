
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANEL REQUIRED panel)

add_library(PANEL INTERFACE IMPORTED)
set_target_properties(PANEL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANEL_INCLUDE_DIRS}")
set_target_properties(PANEL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANEL_LIBRARY_DIRS}")
set_target_properties(PANEL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANEL_LIB_LIBRARIES}")
set_target_properties(PANEL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANEL_CFLAGS_OTHER}")
