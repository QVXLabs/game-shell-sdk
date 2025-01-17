
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(RESOURCEPROTO REQUIRED resourceproto)

add_library(RESOURCEPROTO INTERFACE IMPORTED)
set_target_properties(RESOURCEPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${RESOURCEPROTO_INCLUDE_DIRS}")
set_target_properties(RESOURCEPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${RESOURCEPROTO_LIBRARY_DIRS}")
set_target_properties(RESOURCEPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${RESOURCEPROTO_LIB_LIBRARIES}")
set_target_properties(RESOURCEPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${RESOURCEPROTO_CFLAGS_OTHER}")
