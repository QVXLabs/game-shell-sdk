
find_package(PkgConfig REQUIRED)

pkg_check_modules(COMPOSITEPROTO REQUIRED compositeproto)

add_library(compositeproto::compositeproto INTERFACE IMPORTED)
set_target_properties(compositeproto::compositeproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${COMPOSITEPROTO_INCLUDE_DIRS}")
set_target_properties(compositeproto::compositeproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${COMPOSITEPROTO_LIBRARY_DIRS}")
set_target_properties(compositeproto::compositeproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${COMPOSITEPROTO_LIBRARIES}")
set_target_properties(compositeproto::compositeproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${COMPOSITEPROTO_CFLAGS_OTHER}")
