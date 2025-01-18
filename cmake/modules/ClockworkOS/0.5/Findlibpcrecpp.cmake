
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPCRECPP REQUIRED libpcrecpp)

add_library(LIBPCRECPP INTERFACE IMPORTED)
set_target_properties(LIBPCRECPP PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPCRECPP_INCLUDE_DIRS}")
set_target_properties(LIBPCRECPP PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPCRECPP_LIBRARY_DIRS}")
set_target_properties(LIBPCRECPP PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPCRECPP_LIB_LIBRARIES}")
set_target_properties(LIBPCRECPP PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPCRECPP_CFLAGS_OTHER}")
