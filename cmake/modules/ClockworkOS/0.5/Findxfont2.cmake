
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XFONT2 REQUIRED xfont2)

add_library(XFONT2 INTERFACE IMPORTED)
set_target_properties(XFONT2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XFONT2_INCLUDE_DIRS}")
set_target_properties(XFONT2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XFONT2_LIBRARY_DIRS}")
set_target_properties(XFONT2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XFONT2_LIB_LIBRARIES}")
set_target_properties(XFONT2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XFONT2_CFLAGS_OTHER}")
