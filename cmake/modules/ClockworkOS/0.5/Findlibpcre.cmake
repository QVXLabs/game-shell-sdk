
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPCRE REQUIRED libpcre)

add_library(libpcre::libpcre INTERFACE IMPORTED)
set_target_properties(libpcre::libpcre PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPCRE_INCLUDE_DIRS}")
set_target_properties(libpcre::libpcre PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPCRE_LIBRARY_DIRS}")
set_target_properties(libpcre::libpcre PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPCRE_LIBRARIES}")
set_target_properties(libpcre::libpcre PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPCRE_CFLAGS_OTHER}")
