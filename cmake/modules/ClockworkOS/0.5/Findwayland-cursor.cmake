
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_CURSOR REQUIRED wayland-cursor)

add_library(wayland_cursor::wayland_cursor INTERFACE IMPORTED)
set_target_properties(wayland_cursor::wayland_cursor PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_CURSOR_INCLUDE_DIRS}")
set_target_properties(wayland_cursor::wayland_cursor PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_CURSOR_LIBRARY_DIRS}")
set_target_properties(wayland_cursor::wayland_cursor PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_CURSOR_LIB_LIBRARIES}")
set_target_properties(wayland_cursor::wayland_cursor PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_CURSOR_CFLAGS_OTHER}")
