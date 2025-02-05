
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBTURBOJPEG REQUIRED libturbojpeg)

add_library(libturbojpeg::libturbojpeg INTERFACE IMPORTED)
set_target_properties(libturbojpeg::libturbojpeg PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBTURBOJPEG_INCLUDE_DIRS}")
set_target_properties(libturbojpeg::libturbojpeg PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBTURBOJPEG_LIBRARY_DIRS}")
set_target_properties(libturbojpeg::libturbojpeg PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBTURBOJPEG_LIBRARIES}")
set_target_properties(libturbojpeg::libturbojpeg PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBTURBOJPEG_CFLAGS_OTHER}")
