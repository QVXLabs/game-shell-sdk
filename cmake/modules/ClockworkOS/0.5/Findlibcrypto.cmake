
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBCRYPTO REQUIRED libcrypto)

add_library(libcrypto::libcrypto INTERFACE IMPORTED)
set_target_properties(libcrypto::libcrypto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBCRYPTO_INCLUDE_DIRS}")
set_target_properties(libcrypto::libcrypto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBCRYPTO_LIBRARY_DIRS}")
set_target_properties(libcrypto::libcrypto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBCRYPTO_LIB_LIBRARIES}")
set_target_properties(libcrypto::libcrypto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBCRYPTO_CFLAGS_OTHER}")
