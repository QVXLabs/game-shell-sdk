
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBCRYPTO REQUIRED libcrypto)

add_library(LIBCRYPTO INTERFACE IMPORTED)
set_target_properties(LIBCRYPTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBCRYPTO_INCLUDE_DIRS}")
set_target_properties(LIBCRYPTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBCRYPTO_LIBRARY_DIRS}")
set_target_properties(LIBCRYPTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBCRYPTO_LIB_LIBRARIES}")
set_target_properties(LIBCRYPTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBCRYPTO_CFLAGS_OTHER}")
