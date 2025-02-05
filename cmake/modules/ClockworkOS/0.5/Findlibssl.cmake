
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBSSL REQUIRED libssl)

add_library(libssl::libssl INTERFACE IMPORTED)
set_target_properties(libssl::libssl PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBSSL_INCLUDE_DIRS}")
set_target_properties(libssl::libssl PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBSSL_LIBRARY_DIRS}")
set_target_properties(libssl::libssl PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBSSL_LIBRARIES}")
set_target_properties(libssl::libssl PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBSSL_CFLAGS_OTHER}")
