
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GOBJECT_2.0 REQUIRED gobject-2.0)

add_library(GOBJECT_2.0 INTERFACE IMPORTED)
set_target_properties(GOBJECT_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GOBJECT_2.0_INCLUDE_DIRS}")
set_target_properties(GOBJECT_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GOBJECT_2.0_LIBRARY_DIRS}")
set_target_properties(GOBJECT_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GOBJECT_2.0_LIB_LIBRARIES}")
set_target_properties(GOBJECT_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GOBJECT_2.0_CFLAGS_OTHER}")
