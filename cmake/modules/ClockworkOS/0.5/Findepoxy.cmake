
find_package(PkgConfig REQUIRED)

pkg_check_modules(EPOXY REQUIRED epoxy)

add_library(epoxy::epoxy INTERFACE IMPORTED)
set_target_properties(epoxy::epoxy PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${EPOXY_INCLUDE_DIRS}")
set_target_properties(epoxy::epoxy PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${EPOXY_LIBRARY_DIRS}")
set_target_properties(epoxy::epoxy PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${EPOXY_LIB_LIBRARIES}")
set_target_properties(epoxy::epoxy PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${EPOXY_CFLAGS_OTHER}")
