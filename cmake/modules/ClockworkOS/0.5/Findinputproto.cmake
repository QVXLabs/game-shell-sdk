
find_package(PkgConfig REQUIRED)

pkg_check_modules(INPUTPROTO REQUIRED inputproto)

add_library(inputproto::inputproto INTERFACE IMPORTED)
set_target_properties(inputproto::inputproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${INPUTPROTO_INCLUDE_DIRS}")
set_target_properties(inputproto::inputproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${INPUTPROTO_LIBRARY_DIRS}")
set_target_properties(inputproto::inputproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${INPUTPROTO_LIBRARIES}")
set_target_properties(inputproto::inputproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${INPUTPROTO_CFLAGS_OTHER}")
