
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBMPEG2CONVERT REQUIRED libmpeg2convert)

add_library(libmpeg2convert::libmpeg2convert INTERFACE IMPORTED)
set_target_properties(libmpeg2convert::libmpeg2convert PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBMPEG2CONVERT_INCLUDE_DIRS}")
set_target_properties(libmpeg2convert::libmpeg2convert PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBMPEG2CONVERT_LIBRARY_DIRS}")
set_target_properties(libmpeg2convert::libmpeg2convert PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBMPEG2CONVERT_LIBRARIES}")
set_target_properties(libmpeg2convert::libmpeg2convert PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBMPEG2CONVERT_CFLAGS_OTHER}")
