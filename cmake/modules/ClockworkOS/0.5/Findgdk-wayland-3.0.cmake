
find_package(PkgConfig REQUIRED)

pkg_check_modules(GDK_WAYLAND_3.0 REQUIRED gdk-wayland-3.0)

add_library(gdk_wayland_3.0::gdk_wayland_3.0 INTERFACE IMPORTED)
set_target_properties(gdk_wayland_3.0::gdk_wayland_3.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GDK_WAYLAND_3.0_INCLUDE_DIRS}")
set_target_properties(gdk_wayland_3.0::gdk_wayland_3.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GDK_WAYLAND_3.0_LIBRARY_DIRS}")
set_target_properties(gdk_wayland_3.0::gdk_wayland_3.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GDK_WAYLAND_3.0_LIBRARIES}")
set_target_properties(gdk_wayland_3.0::gdk_wayland_3.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GDK_WAYLAND_3.0_CFLAGS_OTHER}")
