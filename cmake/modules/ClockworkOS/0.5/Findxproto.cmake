
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XPROTO REQUIRED xproto)

add_library(XPROTO INTERFACE IMPORTED)
set_target_properties(XPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XPROTO_INCLUDE_DIRS}")
set_target_properties(XPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XPROTO_LIBRARY_DIRS}")
set_target_properties(XPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XPROTO_LIB_LIBRARIES}")
set_target_properties(XPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XPROTO_CFLAGS_OTHER}")
