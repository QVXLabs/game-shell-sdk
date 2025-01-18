
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_CLIENT REQUIRED wayland-client)

add_library(WAYLAND_CLIENT INTERFACE IMPORTED)
set_target_properties(WAYLAND_CLIENT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_CLIENT_INCLUDE_DIRS}")
set_target_properties(WAYLAND_CLIENT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_CLIENT_LIBRARY_DIRS}")
set_target_properties(WAYLAND_CLIENT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_CLIENT_LIB_LIBRARIES}")
set_target_properties(WAYLAND_CLIENT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_CLIENT_CFLAGS_OTHER}")
