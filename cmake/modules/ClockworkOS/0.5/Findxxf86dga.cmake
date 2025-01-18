
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XXF86DGA REQUIRED xxf86dga)

add_library(XXF86DGA INTERFACE IMPORTED)
set_target_properties(XXF86DGA PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XXF86DGA_INCLUDE_DIRS}")
set_target_properties(XXF86DGA PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XXF86DGA_LIBRARY_DIRS}")
set_target_properties(XXF86DGA PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XXF86DGA_LIB_LIBRARIES}")
set_target_properties(XXF86DGA PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XXF86DGA_CFLAGS_OTHER}")
