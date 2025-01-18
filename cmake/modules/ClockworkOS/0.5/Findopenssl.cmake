
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(OPENSSL REQUIRED openssl)

add_library(OPENSSL INTERFACE IMPORTED)
set_target_properties(OPENSSL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${OPENSSL_INCLUDE_DIRS}")
set_target_properties(OPENSSL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${OPENSSL_LIBRARY_DIRS}")
set_target_properties(OPENSSL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${OPENSSL_LIB_LIBRARIES}")
set_target_properties(OPENSSL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${OPENSSL_CFLAGS_OTHER}")
