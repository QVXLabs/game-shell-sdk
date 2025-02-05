
find_package(PkgConfig REQUIRED)

pkg_check_modules(XKBCOMP REQUIRED xkbcomp)

add_library(xkbcomp::xkbcomp INTERFACE IMPORTED)
set_target_properties(xkbcomp::xkbcomp PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XKBCOMP_INCLUDE_DIRS}")
set_target_properties(xkbcomp::xkbcomp PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XKBCOMP_LIBRARY_DIRS}")
set_target_properties(xkbcomp::xkbcomp PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XKBCOMP_LIBRARIES}")
set_target_properties(xkbcomp::xkbcomp PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XKBCOMP_CFLAGS_OTHER}")
