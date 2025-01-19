
find_package(PkgConfig REQUIRED)

pkg_check_modules(GDK_PIXBUF_2.0 REQUIRED gdk-pixbuf-2.0)

add_library(gdk_pixbuf_2.0::gdk_pixbuf_2.0 INTERFACE IMPORTED)
set_target_properties(gdk_pixbuf_2.0::gdk_pixbuf_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GDK_PIXBUF_2.0_INCLUDE_DIRS}")
set_target_properties(gdk_pixbuf_2.0::gdk_pixbuf_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GDK_PIXBUF_2.0_LIBRARY_DIRS}")
set_target_properties(gdk_pixbuf_2.0::gdk_pixbuf_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GDK_PIXBUF_2.0_LIB_LIBRARIES}")
set_target_properties(gdk_pixbuf_2.0::gdk_pixbuf_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GDK_PIXBUF_2.0_CFLAGS_OTHER}")
