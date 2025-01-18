
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(VIDEOPROTO REQUIRED videoproto)

add_library(VIDEOPROTO INTERFACE IMPORTED)
set_target_properties(VIDEOPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VIDEOPROTO_INCLUDE_DIRS}")
set_target_properties(VIDEOPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VIDEOPROTO_LIBRARY_DIRS}")
set_target_properties(VIDEOPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VIDEOPROTO_LIB_LIBRARIES}")
set_target_properties(VIDEOPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VIDEOPROTO_CFLAGS_OTHER}")
