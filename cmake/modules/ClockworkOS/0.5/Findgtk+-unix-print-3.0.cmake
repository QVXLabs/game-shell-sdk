
find_package(PkgConfig REQUIRED)

pkg_check_modules(GTK+_UNIX_PRINT_3.0 REQUIRED gtk+-unix-print-3.0)

add_library(gtk+_unix_print_3.0::gtk+_unix_print_3.0 INTERFACE IMPORTED)
set_target_properties(gtk+_unix_print_3.0::gtk+_unix_print_3.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GTK+_UNIX_PRINT_3.0_INCLUDE_DIRS}")
set_target_properties(gtk+_unix_print_3.0::gtk+_unix_print_3.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GTK+_UNIX_PRINT_3.0_LIBRARY_DIRS}")
set_target_properties(gtk+_unix_print_3.0::gtk+_unix_print_3.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GTK+_UNIX_PRINT_3.0_LIBRARIES}")
set_target_properties(gtk+_unix_print_3.0::gtk+_unix_print_3.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GTK+_UNIX_PRINT_3.0_CFLAGS_OTHER}")
