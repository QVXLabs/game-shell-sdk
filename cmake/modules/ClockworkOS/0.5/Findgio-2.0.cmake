
find_package(PkgConfig REQUIRED)

pkg_check_modules(GIO_2.0 REQUIRED gio-2.0)

add_library(gio_2.0::gio_2.0 INTERFACE IMPORTED)
set_target_properties(gio_2.0::gio_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GIO_2.0_INCLUDE_DIRS}")
set_target_properties(gio_2.0::gio_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GIO_2.0_LIBRARY_DIRS}")
set_target_properties(gio_2.0::gio_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GIO_2.0_LIB_LIBRARIES}")
set_target_properties(gio_2.0::gio_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GIO_2.0_CFLAGS_OTHER}")
