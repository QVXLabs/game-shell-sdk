
find_package(PkgConfig REQUIRED)

pkg_check_modules(GTK+_BROADWAY_3.0 REQUIRED gtk+-broadway-3.0)

add_library(gtk+_broadway_3.0::gtk+_broadway_3.0 INTERFACE IMPORTED)
set_target_properties(gtk+_broadway_3.0::gtk+_broadway_3.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GTK+_BROADWAY_3.0_INCLUDE_DIRS}")
set_target_properties(gtk+_broadway_3.0::gtk+_broadway_3.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GTK+_BROADWAY_3.0_LIBRARY_DIRS}")
set_target_properties(gtk+_broadway_3.0::gtk+_broadway_3.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GTK+_BROADWAY_3.0_LIBRARIES}")
set_target_properties(gtk+_broadway_3.0::gtk+_broadway_3.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GTK+_BROADWAY_3.0_CFLAGS_OTHER}")
