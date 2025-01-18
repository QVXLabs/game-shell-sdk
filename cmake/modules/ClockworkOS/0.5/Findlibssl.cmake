
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBSSL REQUIRED libssl)

add_library(LIBSSL INTERFACE IMPORTED)
set_target_properties(LIBSSL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBSSL_INCLUDE_DIRS}")
set_target_properties(LIBSSL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBSSL_LIBRARY_DIRS}")
set_target_properties(LIBSSL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBSSL_LIB_LIBRARIES}")
set_target_properties(LIBSSL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBSSL_CFLAGS_OTHER}")
