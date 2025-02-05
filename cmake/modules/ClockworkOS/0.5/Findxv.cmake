
find_package(PkgConfig REQUIRED)

pkg_check_modules(XV REQUIRED xv)

add_library(xv::xv INTERFACE IMPORTED)
set_target_properties(xv::xv PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XV_INCLUDE_DIRS}")
set_target_properties(xv::xv PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XV_LIBRARY_DIRS}")
set_target_properties(xv::xv PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XV_LIBRARIES}")
set_target_properties(xv::xv PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XV_CFLAGS_OTHER}")
