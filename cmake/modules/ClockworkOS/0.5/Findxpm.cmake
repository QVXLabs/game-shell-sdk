
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XPM REQUIRED xpm)

add_library(XPM INTERFACE IMPORTED)
set_target_properties(XPM PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XPM_INCLUDE_DIRS}")
set_target_properties(XPM PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XPM_LIBRARY_DIRS}")
set_target_properties(XPM PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XPM_LIB_LIBRARIES}")
set_target_properties(XPM PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XPM_CFLAGS_OTHER}")
