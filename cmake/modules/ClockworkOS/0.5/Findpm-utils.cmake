
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PM_UTILS REQUIRED pm-utils)

add_library(PM_UTILS INTERFACE IMPORTED)
set_target_properties(PM_UTILS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PM_UTILS_INCLUDE_DIRS}")
set_target_properties(PM_UTILS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PM_UTILS_LIBRARY_DIRS}")
set_target_properties(PM_UTILS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PM_UTILS_LIB_LIBRARIES}")
set_target_properties(PM_UTILS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PM_UTILS_CFLAGS_OTHER}")
