
find_package(PkgConfig REQUIRED)

pkg_check_modules(GDK_3.0 REQUIRED gdk-3.0)

add_library(gdk_3.0::gdk_3.0 INTERFACE IMPORTED)
set_target_properties(gdk_3.0::gdk_3.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GDK_3.0_INCLUDE_DIRS}")
set_target_properties(gdk_3.0::gdk_3.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GDK_3.0_LIBRARY_DIRS}")
set_target_properties(gdk_3.0::gdk_3.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GDK_3.0_LIBRARIES}")
set_target_properties(gdk_3.0::gdk_3.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GDK_3.0_CFLAGS_OTHER}")
