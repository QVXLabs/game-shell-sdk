
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(RANDRPROTO REQUIRED randrproto)

add_library(RANDRPROTO INTERFACE IMPORTED)
set_target_properties(RANDRPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${RANDRPROTO_INCLUDE_DIRS}")
set_target_properties(RANDRPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${RANDRPROTO_LIBRARY_DIRS}")
set_target_properties(RANDRPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${RANDRPROTO_LIB_LIBRARIES}")
set_target_properties(RANDRPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${RANDRPROTO_CFLAGS_OTHER}")
