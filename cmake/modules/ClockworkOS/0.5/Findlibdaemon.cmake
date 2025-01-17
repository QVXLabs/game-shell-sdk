
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDAEMON REQUIRED libdaemon)

add_library(LIBDAEMON INTERFACE IMPORTED)
set_target_properties(LIBDAEMON PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDAEMON_INCLUDE_DIRS}")
set_target_properties(LIBDAEMON PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDAEMON_LIBRARY_DIRS}")
set_target_properties(LIBDAEMON PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDAEMON_LIB_LIBRARIES}")
set_target_properties(LIBDAEMON PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDAEMON_CFLAGS_OTHER}")
