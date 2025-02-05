
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_OMAP REQUIRED libdrm_omap)

add_library(libdrm_omap::libdrm_omap INTERFACE IMPORTED)
set_target_properties(libdrm_omap::libdrm_omap PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_OMAP_INCLUDE_DIRS}")
set_target_properties(libdrm_omap::libdrm_omap PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_OMAP_LIBRARY_DIRS}")
set_target_properties(libdrm_omap::libdrm_omap PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_OMAP_LIBRARIES}")
set_target_properties(libdrm_omap::libdrm_omap PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_OMAP_CFLAGS_OTHER}")
