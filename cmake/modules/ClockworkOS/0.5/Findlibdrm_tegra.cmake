
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_TEGRA REQUIRED libdrm_tegra)

add_library(libdrm_tegra::libdrm_tegra INTERFACE IMPORTED)
set_target_properties(libdrm_tegra::libdrm_tegra PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_TEGRA_INCLUDE_DIRS}")
set_target_properties(libdrm_tegra::libdrm_tegra PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_TEGRA_LIBRARY_DIRS}")
set_target_properties(libdrm_tegra::libdrm_tegra PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_TEGRA_LIBRARIES}")
set_target_properties(libdrm_tegra::libdrm_tegra PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_TEGRA_CFLAGS_OTHER}")
