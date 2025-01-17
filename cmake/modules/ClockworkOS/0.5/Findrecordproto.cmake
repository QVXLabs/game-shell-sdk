
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(RECORDPROTO REQUIRED recordproto)

add_library(RECORDPROTO INTERFACE IMPORTED)
set_target_properties(RECORDPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${RECORDPROTO_INCLUDE_DIRS}")
set_target_properties(RECORDPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${RECORDPROTO_LIBRARY_DIRS}")
set_target_properties(RECORDPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${RECORDPROTO_LIB_LIBRARIES}")
set_target_properties(RECORDPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${RECORDPROTO_CFLAGS_OTHER}")
