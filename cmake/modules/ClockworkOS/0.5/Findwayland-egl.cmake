
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_EGL REQUIRED wayland-egl)

add_library(WAYLAND_EGL INTERFACE IMPORTED)
set_target_properties(WAYLAND_EGL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_EGL_INCLUDE_DIRS}")
set_target_properties(WAYLAND_EGL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_EGL_LIBRARY_DIRS}")
set_target_properties(WAYLAND_EGL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_EGL_LIB_LIBRARIES}")
set_target_properties(WAYLAND_EGL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_EGL_CFLAGS_OTHER}")
