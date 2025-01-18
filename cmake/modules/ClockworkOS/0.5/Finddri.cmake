
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(DRI REQUIRED dri)

add_library(DRI INTERFACE IMPORTED)
set_target_properties(DRI PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DRI_INCLUDE_DIRS}")
set_target_properties(DRI PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DRI_LIBRARY_DIRS}")
set_target_properties(DRI PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DRI_LIB_LIBRARIES}")
set_target_properties(DRI PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DRI_CFLAGS_OTHER}")
