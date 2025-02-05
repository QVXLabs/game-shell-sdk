
find_package(PkgConfig REQUIRED)

pkg_check_modules(DRI3PROTO REQUIRED dri3proto)

add_library(dri3proto::dri3proto INTERFACE IMPORTED)
set_target_properties(dri3proto::dri3proto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DRI3PROTO_INCLUDE_DIRS}")
set_target_properties(dri3proto::dri3proto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DRI3PROTO_LIBRARY_DIRS}")
set_target_properties(dri3proto::dri3proto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DRI3PROTO_LIBRARIES}")
set_target_properties(dri3proto::dri3proto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DRI3PROTO_CFLAGS_OTHER}")
