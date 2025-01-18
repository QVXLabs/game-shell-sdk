
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XORG_MACROS REQUIRED xorg-macros)

add_library(XORG_MACROS INTERFACE IMPORTED)
set_target_properties(XORG_MACROS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XORG_MACROS_INCLUDE_DIRS}")
set_target_properties(XORG_MACROS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XORG_MACROS_LIBRARY_DIRS}")
set_target_properties(XORG_MACROS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XORG_MACROS_LIB_LIBRARIES}")
set_target_properties(XORG_MACROS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XORG_MACROS_CFLAGS_OTHER}")
