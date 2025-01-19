
find_package(PkgConfig REQUIRED)

pkg_check_modules(WAYLAND_SCANNER REQUIRED wayland-scanner)

add_library(wayland_scanner::wayland_scanner INTERFACE IMPORTED)
set_target_properties(wayland_scanner::wayland_scanner PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${WAYLAND_SCANNER_INCLUDE_DIRS}")
set_target_properties(wayland_scanner::wayland_scanner PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${WAYLAND_SCANNER_LIBRARY_DIRS}")
set_target_properties(wayland_scanner::wayland_scanner PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${WAYLAND_SCANNER_LIB_LIBRARIES}")
set_target_properties(wayland_scanner::wayland_scanner PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${WAYLAND_SCANNER_CFLAGS_OTHER}")
