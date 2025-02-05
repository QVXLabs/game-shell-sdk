
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_FREEDRENO REQUIRED libdrm_freedreno)

add_library(libdrm_freedreno::libdrm_freedreno INTERFACE IMPORTED)
set_target_properties(libdrm_freedreno::libdrm_freedreno PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_FREEDRENO_INCLUDE_DIRS}")
set_target_properties(libdrm_freedreno::libdrm_freedreno PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_FREEDRENO_LIBRARY_DIRS}")
set_target_properties(libdrm_freedreno::libdrm_freedreno PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_FREEDRENO_LIBRARIES}")
set_target_properties(libdrm_freedreno::libdrm_freedreno PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_FREEDRENO_CFLAGS_OTHER}")
