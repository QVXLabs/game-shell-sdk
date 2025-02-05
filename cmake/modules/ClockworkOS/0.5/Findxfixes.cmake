
find_package(PkgConfig REQUIRED)

pkg_check_modules(XFIXES REQUIRED xfixes)

add_library(xfixes::xfixes INTERFACE IMPORTED)
set_target_properties(xfixes::xfixes PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XFIXES_INCLUDE_DIRS}")
set_target_properties(xfixes::xfixes PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XFIXES_LIBRARY_DIRS}")
set_target_properties(xfixes::xfixes PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XFIXES_LIBRARIES}")
set_target_properties(xfixes::xfixes PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XFIXES_CFLAGS_OTHER}")
