
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(BIGREQSPROTO REQUIRED bigreqsproto)

add_library(BIGREQSPROTO INTERFACE IMPORTED)
set_target_properties(BIGREQSPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${BIGREQSPROTO_INCLUDE_DIRS}")
set_target_properties(BIGREQSPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${BIGREQSPROTO_LIBRARY_DIRS}")
set_target_properties(BIGREQSPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${BIGREQSPROTO_LIB_LIBRARIES}")
set_target_properties(BIGREQSPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${BIGREQSPROTO_CFLAGS_OTHER}")
