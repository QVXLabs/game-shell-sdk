
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XI REQUIRED xi)

add_library(XI INTERFACE IMPORTED)
set_target_properties(XI PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XI_INCLUDE_DIRS}")
set_target_properties(XI PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XI_LIBRARY_DIRS}")
set_target_properties(XI PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XI_LIB_LIBRARIES}")
set_target_properties(XI PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XI_CFLAGS_OTHER}")
