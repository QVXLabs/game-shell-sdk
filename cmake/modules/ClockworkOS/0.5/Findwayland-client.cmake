
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_CLIENT REQUIRED wayland-client)

add_library(wayland_client::wayland_client INTERFACE IMPORTED)
set_target_properties(wayland_client::wayland_client PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_CLIENT_INCLUDE_DIRS}")
set_target_properties(wayland_client::wayland_client PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_CLIENT_LIBRARY_DIRS}")
set_target_properties(wayland_client::wayland_client PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_CLIENT_LIB_LIBRARIES}")
set_target_properties(wayland_client::wayland_client PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_CLIENT_CFLAGS_OTHER}")
