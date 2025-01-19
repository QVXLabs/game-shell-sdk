
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_RADEON REQUIRED libdrm_radeon)

add_library(libdrm_radeon::libdrm_radeon INTERFACE IMPORTED)
set_target_properties(libdrm_radeon::libdrm_radeon PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_RADEON_INCLUDE_DIRS}")
set_target_properties(libdrm_radeon::libdrm_radeon PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_RADEON_LIBRARY_DIRS}")
set_target_properties(libdrm_radeon::libdrm_radeon PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_RADEON_LIB_LIBRARIES}")
set_target_properties(libdrm_radeon::libdrm_radeon PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_RADEON_CFLAGS_OTHER}")
