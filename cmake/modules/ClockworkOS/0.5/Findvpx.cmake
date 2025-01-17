
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(VPX REQUIRED vpx)

add_library(VPX INTERFACE IMPORTED)
set_target_properties(VPX PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VPX_INCLUDE_DIRS}")
set_target_properties(VPX PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VPX_LIBRARY_DIRS}")
set_target_properties(VPX PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VPX_LIB_LIBRARIES}")
set_target_properties(VPX PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VPX_CFLAGS_OTHER}")
