
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBLZMA REQUIRED liblzma)

add_library(liblzma::liblzma INTERFACE IMPORTED)
set_target_properties(liblzma::liblzma PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBLZMA_INCLUDE_DIRS}")
set_target_properties(liblzma::liblzma PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBLZMA_LIBRARY_DIRS}")
set_target_properties(liblzma::liblzma PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBLZMA_LIBRARIES}")
set_target_properties(liblzma::liblzma PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBLZMA_CFLAGS_OTHER}")
