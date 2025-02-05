
find_package(PkgConfig REQUIRED)

pkg_check_modules(RESOURCEPROTO REQUIRED resourceproto)

add_library(resourceproto::resourceproto INTERFACE IMPORTED)
set_target_properties(resourceproto::resourceproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${RESOURCEPROTO_INCLUDE_DIRS}")
set_target_properties(resourceproto::resourceproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${RESOURCEPROTO_LIBRARY_DIRS}")
set_target_properties(resourceproto::resourceproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${RESOURCEPROTO_LIBRARIES}")
set_target_properties(resourceproto::resourceproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${RESOURCEPROTO_CFLAGS_OTHER}")
