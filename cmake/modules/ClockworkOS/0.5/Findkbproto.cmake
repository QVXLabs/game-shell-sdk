
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(KBPROTO REQUIRED kbproto)

add_library(KBPROTO INTERFACE IMPORTED)
set_target_properties(KBPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${KBPROTO_INCLUDE_DIRS}")
set_target_properties(KBPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${KBPROTO_LIBRARY_DIRS}")
set_target_properties(KBPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${KBPROTO_LIB_LIBRARIES}")
set_target_properties(KBPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${KBPROTO_CFLAGS_OTHER}")
