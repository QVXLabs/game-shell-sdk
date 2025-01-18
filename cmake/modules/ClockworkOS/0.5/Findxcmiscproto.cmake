
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCMISCPROTO REQUIRED xcmiscproto)

add_library(XCMISCPROTO INTERFACE IMPORTED)
set_target_properties(XCMISCPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCMISCPROTO_INCLUDE_DIRS}")
set_target_properties(XCMISCPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCMISCPROTO_LIBRARY_DIRS}")
set_target_properties(XCMISCPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCMISCPROTO_LIB_LIBRARIES}")
set_target_properties(XCMISCPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCMISCPROTO_CFLAGS_OTHER}")
