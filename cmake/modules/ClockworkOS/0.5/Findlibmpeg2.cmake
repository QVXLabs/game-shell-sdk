
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBMPEG2 REQUIRED libmpeg2)

add_library(libmpeg2::libmpeg2 INTERFACE IMPORTED)
set_target_properties(libmpeg2::libmpeg2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBMPEG2_INCLUDE_DIRS}")
set_target_properties(libmpeg2::libmpeg2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBMPEG2_LIBRARY_DIRS}")
set_target_properties(libmpeg2::libmpeg2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBMPEG2_LIBRARIES}")
set_target_properties(libmpeg2::libmpeg2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBMPEG2_CFLAGS_OTHER}")
