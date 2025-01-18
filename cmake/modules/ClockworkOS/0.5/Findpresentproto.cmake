
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PRESENTPROTO REQUIRED presentproto)

add_library(PRESENTPROTO INTERFACE IMPORTED)
set_target_properties(PRESENTPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PRESENTPROTO_INCLUDE_DIRS}")
set_target_properties(PRESENTPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PRESENTPROTO_LIBRARY_DIRS}")
set_target_properties(PRESENTPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PRESENTPROTO_LIB_LIBRARIES}")
set_target_properties(PRESENTPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PRESENTPROTO_CFLAGS_OTHER}")
