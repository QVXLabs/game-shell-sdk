
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(NSPR REQUIRED nspr)

add_library(NSPR INTERFACE IMPORTED)
set_target_properties(NSPR PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NSPR_INCLUDE_DIRS}")
set_target_properties(NSPR PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NSPR_LIBRARY_DIRS}")
set_target_properties(NSPR PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NSPR_LIB_LIBRARIES}")
set_target_properties(NSPR PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NSPR_CFLAGS_OTHER}")
