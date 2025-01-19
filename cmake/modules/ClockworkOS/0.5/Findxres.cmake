
find_package(PkgConfig REQUIRED)

pkg_check_modules(XRES REQUIRED xres)

add_library(xres::xres INTERFACE IMPORTED)
set_target_properties(xres::xres PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XRES_INCLUDE_DIRS}")
set_target_properties(xres::xres PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XRES_LIBRARY_DIRS}")
set_target_properties(xres::xres PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XRES_LIB_LIBRARIES}")
set_target_properties(xres::xres PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XRES_CFLAGS_OTHER}")
