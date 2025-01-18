
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPCREPOSIX REQUIRED libpcreposix)

add_library(LIBPCREPOSIX INTERFACE IMPORTED)
set_target_properties(LIBPCREPOSIX PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPCREPOSIX_INCLUDE_DIRS}")
set_target_properties(LIBPCREPOSIX PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPCREPOSIX_LIBRARY_DIRS}")
set_target_properties(LIBPCREPOSIX PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPCREPOSIX_LIB_LIBRARIES}")
set_target_properties(LIBPCREPOSIX PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPCREPOSIX_CFLAGS_OTHER}")
