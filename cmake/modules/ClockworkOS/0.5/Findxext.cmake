
find_package(PkgConfig REQUIRED)

pkg_check_modules(XEXT REQUIRED xext)

add_library(xext::xext INTERFACE IMPORTED)
set_target_properties(xext::xext PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XEXT_INCLUDE_DIRS}")
set_target_properties(xext::xext PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XEXT_LIBRARY_DIRS}")
set_target_properties(xext::xext PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XEXT_LIBRARIES}")
set_target_properties(xext::xext PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XEXT_CFLAGS_OTHER}")
