
find_package(PkgConfig REQUIRED)

pkg_check_modules(RECORDPROTO REQUIRED recordproto)

add_library(recordproto::recordproto INTERFACE IMPORTED)
set_target_properties(recordproto::recordproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${RECORDPROTO_INCLUDE_DIRS}")
set_target_properties(recordproto::recordproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${RECORDPROTO_LIBRARY_DIRS}")
set_target_properties(recordproto::recordproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${RECORDPROTO_LIB_LIBRARIES}")
set_target_properties(recordproto::recordproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${RECORDPROTO_CFLAGS_OTHER}")
