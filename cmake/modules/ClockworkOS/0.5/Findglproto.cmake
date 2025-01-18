
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLPROTO REQUIRED glproto)

add_library(GLPROTO INTERFACE IMPORTED)
set_target_properties(GLPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLPROTO_INCLUDE_DIRS}")
set_target_properties(GLPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLPROTO_LIBRARY_DIRS}")
set_target_properties(GLPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLPROTO_LIB_LIBRARIES}")
set_target_properties(GLPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLPROTO_CFLAGS_OTHER}")
