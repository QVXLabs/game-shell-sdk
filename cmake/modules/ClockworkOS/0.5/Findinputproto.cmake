
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(INPUTPROTO REQUIRED inputproto)

add_library(INPUTPROTO INTERFACE IMPORTED)
set_target_properties(INPUTPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${INPUTPROTO_INCLUDE_DIRS}")
set_target_properties(INPUTPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${INPUTPROTO_LIBRARY_DIRS}")
set_target_properties(INPUTPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${INPUTPROTO_LIB_LIBRARIES}")
set_target_properties(INPUTPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${INPUTPROTO_CFLAGS_OTHER}")
