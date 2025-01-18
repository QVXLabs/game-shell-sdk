
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(DMX REQUIRED dmx)

add_library(DMX INTERFACE IMPORTED)
set_target_properties(DMX PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DMX_INCLUDE_DIRS}")
set_target_properties(DMX PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DMX_LIBRARY_DIRS}")
set_target_properties(DMX PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DMX_LIB_LIBRARIES}")
set_target_properties(DMX PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DMX_CFLAGS_OTHER}")
