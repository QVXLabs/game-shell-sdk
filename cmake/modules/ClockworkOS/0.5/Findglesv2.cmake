
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLESV2 REQUIRED glesv2)

add_library(GLESV2 INTERFACE IMPORTED)
set_target_properties(GLESV2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLESV2_INCLUDE_DIRS}")
set_target_properties(GLESV2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLESV2_LIBRARY_DIRS}")
set_target_properties(GLESV2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLESV2_LIB_LIBRARIES}")
set_target_properties(GLESV2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLESV2_CFLAGS_OTHER}")
