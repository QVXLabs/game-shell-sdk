
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XINERAMAPROTO REQUIRED xineramaproto)

add_library(XINERAMAPROTO INTERFACE IMPORTED)
set_target_properties(XINERAMAPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XINERAMAPROTO_INCLUDE_DIRS}")
set_target_properties(XINERAMAPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XINERAMAPROTO_LIBRARY_DIRS}")
set_target_properties(XINERAMAPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XINERAMAPROTO_LIB_LIBRARIES}")
set_target_properties(XINERAMAPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XINERAMAPROTO_CFLAGS_OTHER}")
