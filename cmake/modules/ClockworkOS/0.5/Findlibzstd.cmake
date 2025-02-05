
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBZSTD REQUIRED libzstd)

add_library(libzstd::libzstd INTERFACE IMPORTED)
set_target_properties(libzstd::libzstd PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBZSTD_INCLUDE_DIRS}")
set_target_properties(libzstd::libzstd PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBZSTD_LIBRARY_DIRS}")
set_target_properties(libzstd::libzstd PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBZSTD_LIBRARIES}")
set_target_properties(libzstd::libzstd PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBZSTD_CFLAGS_OTHER}")
