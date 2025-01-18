
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GEOCLUE_2.0 REQUIRED geoclue-2.0)

add_library(GEOCLUE_2.0 INTERFACE IMPORTED)
set_target_properties(GEOCLUE_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GEOCLUE_2.0_INCLUDE_DIRS}")
set_target_properties(GEOCLUE_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GEOCLUE_2.0_LIBRARY_DIRS}")
set_target_properties(GEOCLUE_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GEOCLUE_2.0_LIB_LIBRARIES}")
set_target_properties(GEOCLUE_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GEOCLUE_2.0_CFLAGS_OTHER}")
