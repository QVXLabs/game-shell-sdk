
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_WAYLAND REQUIRED libva-wayland)

add_library(LIBVA_WAYLAND INTERFACE IMPORTED)
set_target_properties(LIBVA_WAYLAND PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_WAYLAND_INCLUDE_DIRS}")
set_target_properties(LIBVA_WAYLAND PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_WAYLAND_LIBRARY_DIRS}")
set_target_properties(LIBVA_WAYLAND PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_WAYLAND_LIB_LIBRARIES}")
set_target_properties(LIBVA_WAYLAND PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_WAYLAND_CFLAGS_OTHER}")
