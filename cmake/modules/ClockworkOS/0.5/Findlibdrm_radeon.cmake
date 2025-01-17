
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_RADEON REQUIRED libdrm_radeon)

add_library(LIBDRM_RADEON INTERFACE IMPORTED)
set_target_properties(LIBDRM_RADEON PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_RADEON_INCLUDE_DIRS}")
set_target_properties(LIBDRM_RADEON PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_RADEON_LIBRARY_DIRS}")
set_target_properties(LIBDRM_RADEON PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_RADEON_LIB_LIBRARIES}")
set_target_properties(LIBDRM_RADEON PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_RADEON_CFLAGS_OTHER}")
