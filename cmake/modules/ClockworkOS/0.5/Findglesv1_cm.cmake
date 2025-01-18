
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLESV1_CM REQUIRED glesv1_cm)

add_library(GLESV1_CM INTERFACE IMPORTED)
set_target_properties(GLESV1_CM PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLESV1_CM_INCLUDE_DIRS}")
set_target_properties(GLESV1_CM PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLESV1_CM_LIBRARY_DIRS}")
set_target_properties(GLESV1_CM PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLESV1_CM_LIB_LIBRARIES}")
set_target_properties(GLESV1_CM PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLESV1_CM_CFLAGS_OTHER}")
