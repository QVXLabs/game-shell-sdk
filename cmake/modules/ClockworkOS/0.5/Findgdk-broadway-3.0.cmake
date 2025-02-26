
find_package(PkgConfig REQUIRED)

pkg_check_modules(GDK_BROADWAY_3.0 REQUIRED gdk-broadway-3.0)

add_library(gdk_broadway_3.0::gdk_broadway_3.0 INTERFACE IMPORTED)
set_target_properties(gdk_broadway_3.0::gdk_broadway_3.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GDK_BROADWAY_3.0_INCLUDE_DIRS}")
set_target_properties(gdk_broadway_3.0::gdk_broadway_3.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GDK_BROADWAY_3.0_LIBRARY_DIRS}")
set_target_properties(gdk_broadway_3.0::gdk_broadway_3.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GDK_BROADWAY_3.0_LIB_LIBRARIES}")
set_target_properties(gdk_broadway_3.0::gdk_broadway_3.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GDK_BROADWAY_3.0_CFLAGS_OTHER}")
