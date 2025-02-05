
find_package(PkgConfig REQUIRED)

pkg_check_modules(GIO_UNIX_2.0 REQUIRED gio-unix-2.0)

add_library(gio_unix_2.0::gio_unix_2.0 INTERFACE IMPORTED)
set_target_properties(gio_unix_2.0::gio_unix_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GIO_UNIX_2.0_INCLUDE_DIRS}")
set_target_properties(gio_unix_2.0::gio_unix_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GIO_UNIX_2.0_LIBRARY_DIRS}")
set_target_properties(gio_unix_2.0::gio_unix_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GIO_UNIX_2.0_LIBRARIES}")
set_target_properties(gio_unix_2.0::gio_unix_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GIO_UNIX_2.0_CFLAGS_OTHER}")
