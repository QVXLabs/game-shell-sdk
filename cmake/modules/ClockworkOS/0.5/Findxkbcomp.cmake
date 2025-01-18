
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XKBCOMP REQUIRED xkbcomp)

add_library(XKBCOMP INTERFACE IMPORTED)
set_target_properties(XKBCOMP PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XKBCOMP_INCLUDE_DIRS}")
set_target_properties(XKBCOMP PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XKBCOMP_LIBRARY_DIRS}")
set_target_properties(XKBCOMP PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XKBCOMP_LIB_LIBRARIES}")
set_target_properties(XKBCOMP PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XKBCOMP_CFLAGS_OTHER}")
