
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(TIC REQUIRED tic)

add_library(TIC INTERFACE IMPORTED)
set_target_properties(TIC PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${TIC_INCLUDE_DIRS}")
set_target_properties(TIC PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${TIC_LIBRARY_DIRS}")
set_target_properties(TIC PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${TIC_LIB_LIBRARIES}")
set_target_properties(TIC PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${TIC_CFLAGS_OTHER}")
