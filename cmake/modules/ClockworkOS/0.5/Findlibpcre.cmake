
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPCRE REQUIRED libpcre)

add_library(LIBPCRE INTERFACE IMPORTED)
set_target_properties(LIBPCRE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPCRE_INCLUDE_DIRS}")
set_target_properties(LIBPCRE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPCRE_LIBRARY_DIRS}")
set_target_properties(LIBPCRE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPCRE_LIB_LIBRARIES}")
set_target_properties(LIBPCRE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPCRE_CFLAGS_OTHER}")
