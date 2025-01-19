
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_SERVER REQUIRED wayland-server)

add_library(wayland_server::wayland_server INTERFACE IMPORTED)
set_target_properties(wayland_server::wayland_server PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_SERVER_INCLUDE_DIRS}")
set_target_properties(wayland_server::wayland_server PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_SERVER_LIBRARY_DIRS}")
set_target_properties(wayland_server::wayland_server PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_SERVER_LIB_LIBRARIES}")
set_target_properties(wayland_server::wayland_server PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_SERVER_CFLAGS_OTHER}")
