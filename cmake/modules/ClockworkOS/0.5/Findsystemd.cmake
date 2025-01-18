
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(SYSTEMD REQUIRED systemd)

add_library(SYSTEMD INTERFACE IMPORTED)
set_target_properties(SYSTEMD PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SYSTEMD_INCLUDE_DIRS}")
set_target_properties(SYSTEMD PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SYSTEMD_LIBRARY_DIRS}")
set_target_properties(SYSTEMD PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SYSTEMD_LIB_LIBRARIES}")
set_target_properties(SYSTEMD PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SYSTEMD_CFLAGS_OTHER}")
