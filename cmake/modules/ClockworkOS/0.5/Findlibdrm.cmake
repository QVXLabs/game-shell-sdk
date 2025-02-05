
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM REQUIRED libdrm)

add_library(libdrm::libdrm INTERFACE IMPORTED)
set_target_properties(libdrm::libdrm PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_INCLUDE_DIRS}")
set_target_properties(libdrm::libdrm PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_LIBRARY_DIRS}")
set_target_properties(libdrm::libdrm PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_LIBRARIES}")
set_target_properties(libdrm::libdrm PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_CFLAGS_OTHER}")
