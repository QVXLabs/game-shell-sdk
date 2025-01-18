
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(RENDERPROTO REQUIRED renderproto)

add_library(RENDERPROTO INTERFACE IMPORTED)
set_target_properties(RENDERPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${RENDERPROTO_INCLUDE_DIRS}")
set_target_properties(RENDERPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${RENDERPROTO_LIBRARY_DIRS}")
set_target_properties(RENDERPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${RENDERPROTO_LIB_LIBRARIES}")
set_target_properties(RENDERPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${RENDERPROTO_CFLAGS_OTHER}")
