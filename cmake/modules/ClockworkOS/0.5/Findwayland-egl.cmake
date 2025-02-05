
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_EGL REQUIRED wayland-egl)

add_library(wayland_egl::wayland_egl INTERFACE IMPORTED)
set_target_properties(wayland_egl::wayland_egl PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_EGL_INCLUDE_DIRS}")
set_target_properties(wayland_egl::wayland_egl PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_EGL_LIBRARY_DIRS}")
set_target_properties(wayland_egl::wayland_egl PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_EGL_LIBRARIES}")
set_target_properties(wayland_egl::wayland_egl PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_EGL_CFLAGS_OTHER}")
