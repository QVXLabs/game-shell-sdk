
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_SCANNER REQUIRED wayland-scanner)

add_library(WAYLAND_SCANNER INTERFACE IMPORTED)
set_target_properties(WAYLAND_SCANNER PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_SCANNER_INCLUDE_DIRS}")
set_target_properties(WAYLAND_SCANNER PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_SCANNER_LIBRARY_DIRS}")
set_target_properties(WAYLAND_SCANNER PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_SCANNER_LIB_LIBRARIES}")
set_target_properties(WAYLAND_SCANNER PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_SCANNER_CFLAGS_OTHER}")
