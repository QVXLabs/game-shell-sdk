
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPCREPOSIX REQUIRED libpcreposix)

add_library(libpcreposix::libpcreposix INTERFACE IMPORTED)
set_target_properties(libpcreposix::libpcreposix PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPCREPOSIX_INCLUDE_DIRS}")
set_target_properties(libpcreposix::libpcreposix PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPCREPOSIX_LIBRARY_DIRS}")
set_target_properties(libpcreposix::libpcreposix PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPCREPOSIX_LIB_LIBRARIES}")
set_target_properties(libpcreposix::libpcreposix PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPCREPOSIX_CFLAGS_OTHER}")
