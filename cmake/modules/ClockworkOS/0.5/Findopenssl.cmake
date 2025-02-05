
find_package(PkgConfig REQUIRED)

pkg_check_modules(OPENSSL REQUIRED openssl)

add_library(openssl::openssl INTERFACE IMPORTED)
set_target_properties(openssl::openssl PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${OPENSSL_INCLUDE_DIRS}")
set_target_properties(openssl::openssl PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${OPENSSL_LIBRARY_DIRS}")
set_target_properties(openssl::openssl PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${OPENSSL_LIBRARIES}")
set_target_properties(openssl::openssl PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${OPENSSL_CFLAGS_OTHER}")
