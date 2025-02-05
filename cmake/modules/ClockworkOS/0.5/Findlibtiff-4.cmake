
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBTIFF_4 REQUIRED libtiff-4)

add_library(libtiff_4::libtiff_4 INTERFACE IMPORTED)
set_target_properties(libtiff_4::libtiff_4 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBTIFF_4_INCLUDE_DIRS}")
set_target_properties(libtiff_4::libtiff_4 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBTIFF_4_LIBRARY_DIRS}")
set_target_properties(libtiff_4::libtiff_4 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBTIFF_4_LIBRARIES}")
set_target_properties(libtiff_4::libtiff_4 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBTIFF_4_CFLAGS_OTHER}")
