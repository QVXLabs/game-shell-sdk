
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPCRECPP REQUIRED libpcrecpp)

add_library(libpcrecpp::libpcrecpp INTERFACE IMPORTED)
set_target_properties(libpcrecpp::libpcrecpp PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPCRECPP_INCLUDE_DIRS}")
set_target_properties(libpcrecpp::libpcrecpp PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPCRECPP_LIBRARY_DIRS}")
set_target_properties(libpcrecpp::libpcrecpp PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPCRECPP_LIB_LIBRARIES}")
set_target_properties(libpcrecpp::libpcrecpp PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPCRECPP_CFLAGS_OTHER}")
