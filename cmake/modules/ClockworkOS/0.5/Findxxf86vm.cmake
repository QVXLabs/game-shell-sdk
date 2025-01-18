
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XXF86VM REQUIRED xxf86vm)

add_library(XXF86VM INTERFACE IMPORTED)
set_target_properties(XXF86VM PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XXF86VM_INCLUDE_DIRS}")
set_target_properties(XXF86VM PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XXF86VM_LIBRARY_DIRS}")
set_target_properties(XXF86VM PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XXF86VM_LIB_LIBRARIES}")
set_target_properties(XXF86VM PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XXF86VM_CFLAGS_OTHER}")
