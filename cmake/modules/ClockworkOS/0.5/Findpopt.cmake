
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(POPT REQUIRED popt)

add_library(POPT INTERFACE IMPORTED)
set_target_properties(POPT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${POPT_INCLUDE_DIRS}")
set_target_properties(POPT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${POPT_LIBRARY_DIRS}")
set_target_properties(POPT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${POPT_LIB_LIBRARIES}")
set_target_properties(POPT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${POPT_CFLAGS_OTHER}")
