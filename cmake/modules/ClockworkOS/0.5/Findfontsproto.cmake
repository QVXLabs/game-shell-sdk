
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(FONTSPROTO REQUIRED fontsproto)

add_library(FONTSPROTO INTERFACE IMPORTED)
set_target_properties(FONTSPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FONTSPROTO_INCLUDE_DIRS}")
set_target_properties(FONTSPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FONTSPROTO_LIBRARY_DIRS}")
set_target_properties(FONTSPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FONTSPROTO_LIB_LIBRARIES}")
set_target_properties(FONTSPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FONTSPROTO_CFLAGS_OTHER}")
