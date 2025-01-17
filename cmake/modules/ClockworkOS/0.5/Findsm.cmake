
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(SM REQUIRED sm)

add_library(SM INTERFACE IMPORTED)
set_target_properties(SM PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SM_INCLUDE_DIRS}")
set_target_properties(SM PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SM_LIBRARY_DIRS}")
set_target_properties(SM PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SM_LIB_LIBRARIES}")
set_target_properties(SM PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SM_CFLAGS_OTHER}")
