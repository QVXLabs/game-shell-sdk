
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XEXTPROTO REQUIRED xextproto)

add_library(XEXTPROTO INTERFACE IMPORTED)
set_target_properties(XEXTPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XEXTPROTO_INCLUDE_DIRS}")
set_target_properties(XEXTPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XEXTPROTO_LIBRARY_DIRS}")
set_target_properties(XEXTPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XEXTPROTO_LIB_LIBRARIES}")
set_target_properties(XEXTPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XEXTPROTO_CFLAGS_OTHER}")
