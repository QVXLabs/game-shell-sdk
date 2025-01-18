
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_TEGRA REQUIRED libdrm_tegra)

add_library(LIBDRM_TEGRA INTERFACE IMPORTED)
set_target_properties(LIBDRM_TEGRA PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_TEGRA_INCLUDE_DIRS}")
set_target_properties(LIBDRM_TEGRA PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_TEGRA_LIBRARY_DIRS}")
set_target_properties(LIBDRM_TEGRA PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_TEGRA_LIB_LIBRARIES}")
set_target_properties(LIBDRM_TEGRA PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_TEGRA_CFLAGS_OTHER}")
