
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBCONFIG REQUIRED libconfig)

add_library(libconfig::libconfig INTERFACE IMPORTED)
set_target_properties(libconfig::libconfig PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBCONFIG_INCLUDE_DIRS}")
set_target_properties(libconfig::libconfig PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBCONFIG_LIBRARY_DIRS}")
set_target_properties(libconfig::libconfig PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBCONFIG_LIB_LIBRARIES}")
set_target_properties(libconfig::libconfig PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBCONFIG_CFLAGS_OTHER}")
