
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLPROTO REQUIRED glproto)

add_library(glproto::glproto INTERFACE IMPORTED)
set_target_properties(glproto::glproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLPROTO_INCLUDE_DIRS}")
set_target_properties(glproto::glproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLPROTO_LIBRARY_DIRS}")
set_target_properties(glproto::glproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLPROTO_LIBRARIES}")
set_target_properties(glproto::glproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLPROTO_CFLAGS_OTHER}")
