
find_package(PkgConfig REQUIRED)

pkg_check_modules(GTK+_WAYLAND_3.0 REQUIRED gtk+-wayland-3.0)

add_library(gtk+_wayland_3.0::gtk+_wayland_3.0 INTERFACE IMPORTED)
set_target_properties(gtk+_wayland_3.0::gtk+_wayland_3.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GTK+_WAYLAND_3.0_INCLUDE_DIRS}")
set_target_properties(gtk+_wayland_3.0::gtk+_wayland_3.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GTK+_WAYLAND_3.0_LIBRARY_DIRS}")
set_target_properties(gtk+_wayland_3.0::gtk+_wayland_3.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GTK+_WAYLAND_3.0_LIBRARIES}")
set_target_properties(gtk+_wayland_3.0::gtk+_wayland_3.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GTK+_WAYLAND_3.0_CFLAGS_OTHER}")
