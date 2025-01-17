
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XORG_WACOM REQUIRED xorg-wacom)

add_library(XORG_WACOM INTERFACE IMPORTED)
set_target_properties(XORG_WACOM PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XORG_WACOM_INCLUDE_DIRS}")
set_target_properties(XORG_WACOM PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XORG_WACOM_LIBRARY_DIRS}")
set_target_properties(XORG_WACOM PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XORG_WACOM_LIB_LIBRARIES}")
set_target_properties(XORG_WACOM PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XORG_WACOM_CFLAGS_OTHER}")
