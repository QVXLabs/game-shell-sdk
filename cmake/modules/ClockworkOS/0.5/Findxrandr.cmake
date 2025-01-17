
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XRANDR REQUIRED xrandr)

add_library(XRANDR INTERFACE IMPORTED)
set_target_properties(XRANDR PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XRANDR_INCLUDE_DIRS}")
set_target_properties(XRANDR PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XRANDR_LIBRARY_DIRS}")
set_target_properties(XRANDR PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XRANDR_LIB_LIBRARIES}")
set_target_properties(XRANDR PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XRANDR_CFLAGS_OTHER}")
