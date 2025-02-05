
find_package(PkgConfig REQUIRED)

pkg_check_modules(BLAS REQUIRED blas)

add_library(blas::blas INTERFACE IMPORTED)
set_target_properties(blas::blas PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${BLAS_INCLUDE_DIRS}")
set_target_properties(blas::blas PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${BLAS_LIBRARY_DIRS}")
set_target_properties(blas::blas PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${BLAS_LIBRARIES}")
set_target_properties(blas::blas PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${BLAS_CFLAGS_OTHER}")
