
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(FONTCONFIG REQUIRED fontconfig)

add_library(FONTCONFIG INTERFACE IMPORTED)
set_target_properties(FONTCONFIG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FONTCONFIG_INCLUDE_DIRS}")
set_target_properties(FONTCONFIG PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FONTCONFIG_LIBRARY_DIRS}")
set_target_properties(FONTCONFIG PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FONTCONFIG_LIB_LIBRARIES}")
set_target_properties(FONTCONFIG PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FONTCONFIG_CFLAGS_OTHER}")
