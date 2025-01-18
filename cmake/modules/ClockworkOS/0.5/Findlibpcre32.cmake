
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPCRE32 REQUIRED libpcre32)

add_library(LIBPCRE32 INTERFACE IMPORTED)
set_target_properties(LIBPCRE32 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPCRE32_INCLUDE_DIRS}")
set_target_properties(LIBPCRE32 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPCRE32_LIBRARY_DIRS}")
set_target_properties(LIBPCRE32 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPCRE32_LIB_LIBRARIES}")
set_target_properties(LIBPCRE32 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPCRE32_CFLAGS_OTHER}")
