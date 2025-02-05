
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_EXYNOS REQUIRED libdrm_exynos)

add_library(libdrm_exynos::libdrm_exynos INTERFACE IMPORTED)
set_target_properties(libdrm_exynos::libdrm_exynos PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_EXYNOS_INCLUDE_DIRS}")
set_target_properties(libdrm_exynos::libdrm_exynos PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_EXYNOS_LIBRARY_DIRS}")
set_target_properties(libdrm_exynos::libdrm_exynos PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_EXYNOS_LIBRARIES}")
set_target_properties(libdrm_exynos::libdrm_exynos PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_EXYNOS_CFLAGS_OTHER}")
