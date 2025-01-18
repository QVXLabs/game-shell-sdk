
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XINERAMA REQUIRED xinerama)

add_library(XINERAMA INTERFACE IMPORTED)
set_target_properties(XINERAMA PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XINERAMA_INCLUDE_DIRS}")
set_target_properties(XINERAMA PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XINERAMA_LIBRARY_DIRS}")
set_target_properties(XINERAMA PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XINERAMA_LIB_LIBRARIES}")
set_target_properties(XINERAMA PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XINERAMA_CFLAGS_OTHER}")
