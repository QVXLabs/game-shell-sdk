
find_package(PkgConfig REQUIRED)

pkg_check_modules(NSPR REQUIRED nspr)

add_library(nspr::nspr INTERFACE IMPORTED)
set_target_properties(nspr::nspr PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NSPR_INCLUDE_DIRS}")
set_target_properties(nspr::nspr PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NSPR_LIBRARY_DIRS}")
set_target_properties(nspr::nspr PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NSPR_LIB_LIBRARIES}")
set_target_properties(nspr::nspr PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NSPR_CFLAGS_OTHER}")
