
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(FIXESPROTO REQUIRED fixesproto)

add_library(FIXESPROTO INTERFACE IMPORTED)
set_target_properties(FIXESPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FIXESPROTO_INCLUDE_DIRS}")
set_target_properties(FIXESPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FIXESPROTO_LIBRARY_DIRS}")
set_target_properties(FIXESPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FIXESPROTO_LIB_LIBRARIES}")
set_target_properties(FIXESPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FIXESPROTO_CFLAGS_OTHER}")
