
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(FONTUTIL REQUIRED fontutil)

add_library(FONTUTIL INTERFACE IMPORTED)
set_target_properties(FONTUTIL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FONTUTIL_INCLUDE_DIRS}")
set_target_properties(FONTUTIL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FONTUTIL_LIBRARY_DIRS}")
set_target_properties(FONTUTIL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FONTUTIL_LIB_LIBRARIES}")
set_target_properties(FONTUTIL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FONTUTIL_CFLAGS_OTHER}")
