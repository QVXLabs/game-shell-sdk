
find_package(PkgConfig REQUIRED)

pkg_check_modules(DRI2PROTO REQUIRED dri2proto)

add_library(dri2proto::dri2proto INTERFACE IMPORTED)
set_target_properties(dri2proto::dri2proto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DRI2PROTO_INCLUDE_DIRS}")
set_target_properties(dri2proto::dri2proto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DRI2PROTO_LIBRARY_DIRS}")
set_target_properties(dri2proto::dri2proto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DRI2PROTO_LIB_LIBRARIES}")
set_target_properties(dri2proto::dri2proto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DRI2PROTO_CFLAGS_OTHER}")
