
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBJPEG REQUIRED libjpeg)

add_library(libjpeg::libjpeg INTERFACE IMPORTED)
set_target_properties(libjpeg::libjpeg PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBJPEG_INCLUDE_DIRS}")
set_target_properties(libjpeg::libjpeg PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBJPEG_LIBRARY_DIRS}")
set_target_properties(libjpeg::libjpeg PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBJPEG_LIBRARIES}")
set_target_properties(libjpeg::libjpeg PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBJPEG_CFLAGS_OTHER}")
