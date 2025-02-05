
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_WAYLAND REQUIRED libva-wayland)

add_library(libva_wayland::libva_wayland INTERFACE IMPORTED)
set_target_properties(libva_wayland::libva_wayland PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_WAYLAND_INCLUDE_DIRS}")
set_target_properties(libva_wayland::libva_wayland PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_WAYLAND_LIBRARY_DIRS}")
set_target_properties(libva_wayland::libva_wayland PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_WAYLAND_LIBRARIES}")
set_target_properties(libva_wayland::libva_wayland PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_WAYLAND_CFLAGS_OTHER}")
