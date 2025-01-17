
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(ATK REQUIRED atk)

add_library(ATK INTERFACE IMPORTED)
set_target_properties(ATK PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ATK_INCLUDE_DIRS}")
set_target_properties(ATK PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ATK_LIBRARY_DIRS}")
set_target_properties(ATK PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ATK_LIB_LIBRARIES}")
set_target_properties(ATK PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ATK_CFLAGS_OTHER}")
