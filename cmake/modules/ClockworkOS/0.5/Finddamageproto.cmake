
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(DAMAGEPROTO REQUIRED damageproto)

add_library(DAMAGEPROTO INTERFACE IMPORTED)
set_target_properties(DAMAGEPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DAMAGEPROTO_INCLUDE_DIRS}")
set_target_properties(DAMAGEPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DAMAGEPROTO_LIBRARY_DIRS}")
set_target_properties(DAMAGEPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DAMAGEPROTO_LIB_LIBRARIES}")
set_target_properties(DAMAGEPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DAMAGEPROTO_CFLAGS_OTHER}")
