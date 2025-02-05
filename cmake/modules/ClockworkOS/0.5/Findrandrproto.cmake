
find_package(PkgConfig REQUIRED)

pkg_check_modules(RANDRPROTO REQUIRED randrproto)

add_library(randrproto::randrproto INTERFACE IMPORTED)
set_target_properties(randrproto::randrproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${RANDRPROTO_INCLUDE_DIRS}")
set_target_properties(randrproto::randrproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${RANDRPROTO_LIBRARY_DIRS}")
set_target_properties(randrproto::randrproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${RANDRPROTO_LIBRARIES}")
set_target_properties(randrproto::randrproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${RANDRPROTO_CFLAGS_OTHER}")
