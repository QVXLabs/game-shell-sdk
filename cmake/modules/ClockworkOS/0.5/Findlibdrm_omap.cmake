
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_OMAP REQUIRED libdrm_omap)

add_library(LIBDRM_OMAP INTERFACE IMPORTED)
set_target_properties(LIBDRM_OMAP PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_OMAP_INCLUDE_DIRS}")
set_target_properties(LIBDRM_OMAP PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_OMAP_LIBRARY_DIRS}")
set_target_properties(LIBDRM_OMAP PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_OMAP_LIB_LIBRARIES}")
set_target_properties(LIBDRM_OMAP PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_OMAP_CFLAGS_OTHER}")
