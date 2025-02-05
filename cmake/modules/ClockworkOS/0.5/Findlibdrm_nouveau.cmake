
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_NOUVEAU REQUIRED libdrm_nouveau)

add_library(libdrm_nouveau::libdrm_nouveau INTERFACE IMPORTED)
set_target_properties(libdrm_nouveau::libdrm_nouveau PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_NOUVEAU_INCLUDE_DIRS}")
set_target_properties(libdrm_nouveau::libdrm_nouveau PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_NOUVEAU_LIBRARY_DIRS}")
set_target_properties(libdrm_nouveau::libdrm_nouveau PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_NOUVEAU_LIBRARIES}")
set_target_properties(libdrm_nouveau::libdrm_nouveau PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_NOUVEAU_CFLAGS_OTHER}")
