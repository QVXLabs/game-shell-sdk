
find_package(PkgConfig REQUIRED)

pkg_check_modules(GTK+_3.0 REQUIRED gtk+-3.0)

add_library(gtk+_3.0::gtk+_3.0 INTERFACE IMPORTED)
set_target_properties(gtk+_3.0::gtk+_3.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GTK+_3.0_INCLUDE_DIRS}")
set_target_properties(gtk+_3.0::gtk+_3.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GTK+_3.0_LIBRARY_DIRS}")
set_target_properties(gtk+_3.0::gtk+_3.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GTK+_3.0_LIB_LIBRARIES}")
set_target_properties(gtk+_3.0::gtk+_3.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GTK+_3.0_CFLAGS_OTHER}")
