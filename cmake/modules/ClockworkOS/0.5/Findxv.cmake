
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XV REQUIRED xv)

add_library(XV INTERFACE IMPORTED)
set_target_properties(XV PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XV_INCLUDE_DIRS}")
set_target_properties(XV PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XV_LIBRARY_DIRS}")
set_target_properties(XV PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XV_LIB_LIBRARIES}")
set_target_properties(XV PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XV_CFLAGS_OTHER}")
