
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCMISCPROTO REQUIRED xcmiscproto)

add_library(xcmiscproto::xcmiscproto INTERFACE IMPORTED)
set_target_properties(xcmiscproto::xcmiscproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCMISCPROTO_INCLUDE_DIRS}")
set_target_properties(xcmiscproto::xcmiscproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCMISCPROTO_LIBRARY_DIRS}")
set_target_properties(xcmiscproto::xcmiscproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCMISCPROTO_LIBRARIES}")
set_target_properties(xcmiscproto::xcmiscproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCMISCPROTO_CFLAGS_OTHER}")
