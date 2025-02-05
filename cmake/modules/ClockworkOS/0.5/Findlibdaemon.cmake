
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDAEMON REQUIRED libdaemon)

add_library(libdaemon::libdaemon INTERFACE IMPORTED)
set_target_properties(libdaemon::libdaemon PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDAEMON_INCLUDE_DIRS}")
set_target_properties(libdaemon::libdaemon PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDAEMON_LIBRARY_DIRS}")
set_target_properties(libdaemon::libdaemon PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDAEMON_LIBRARIES}")
set_target_properties(libdaemon::libdaemon PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDAEMON_CFLAGS_OTHER}")
