
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_EXYNOS REQUIRED libdrm_exynos)

add_library(LIBDRM_EXYNOS INTERFACE IMPORTED)
set_target_properties(LIBDRM_EXYNOS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_EXYNOS_INCLUDE_DIRS}")
set_target_properties(LIBDRM_EXYNOS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_EXYNOS_LIBRARY_DIRS}")
set_target_properties(LIBDRM_EXYNOS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_EXYNOS_LIB_LIBRARIES}")
set_target_properties(LIBDRM_EXYNOS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_EXYNOS_CFLAGS_OTHER}")
