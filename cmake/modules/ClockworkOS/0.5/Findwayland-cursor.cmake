
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_CURSOR REQUIRED wayland-cursor)

add_library(WAYLAND_CURSOR INTERFACE IMPORTED)
set_target_properties(WAYLAND_CURSOR PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_CURSOR_INCLUDE_DIRS}")
set_target_properties(WAYLAND_CURSOR PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_CURSOR_LIBRARY_DIRS}")
set_target_properties(WAYLAND_CURSOR PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_CURSOR_LIB_LIBRARIES}")
set_target_properties(WAYLAND_CURSOR PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_CURSOR_CFLAGS_OTHER}")
