
find_package(PkgConfig REQUIRED)

pkg_check_modules(BLAS_NETLIB REQUIRED blas-netlib)

add_library(blas_netlib::blas_netlib INTERFACE IMPORTED)
set_target_properties(blas_netlib::blas_netlib PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${BLAS_NETLIB_INCLUDE_DIRS}")
set_target_properties(blas_netlib::blas_netlib PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${BLAS_NETLIB_LIBRARY_DIRS}")
set_target_properties(blas_netlib::blas_netlib PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${BLAS_NETLIB_LIB_LIBRARIES}")
set_target_properties(blas_netlib::blas_netlib PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${BLAS_NETLIB_CFLAGS_OTHER}")
