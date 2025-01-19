
find_package(PkgConfig REQUIRED)

pkg_check_modules(SCRNSAVERPROTO REQUIRED scrnsaverproto)

add_library(scrnsaverproto::scrnsaverproto INTERFACE IMPORTED)
set_target_properties(scrnsaverproto::scrnsaverproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SCRNSAVERPROTO_INCLUDE_DIRS}")
set_target_properties(scrnsaverproto::scrnsaverproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SCRNSAVERPROTO_LIBRARY_DIRS}")
set_target_properties(scrnsaverproto::scrnsaverproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SCRNSAVERPROTO_LIB_LIBRARIES}")
set_target_properties(scrnsaverproto::scrnsaverproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SCRNSAVERPROTO_CFLAGS_OTHER}")
