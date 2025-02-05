
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_PROTOCOLS REQUIRED wayland-protocols)

add_library(wayland_protocols::wayland_protocols INTERFACE IMPORTED)
set_target_properties(wayland_protocols::wayland_protocols PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_PROTOCOLS_INCLUDE_DIRS}")
set_target_properties(wayland_protocols::wayland_protocols PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_PROTOCOLS_LIBRARY_DIRS}")
set_target_properties(wayland_protocols::wayland_protocols PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_PROTOCOLS_LIBRARIES}")
set_target_properties(wayland_protocols::wayland_protocols PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_PROTOCOLS_CFLAGS_OTHER}")
