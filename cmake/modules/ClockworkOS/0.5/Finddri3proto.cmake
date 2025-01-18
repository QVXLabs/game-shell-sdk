
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(DRI3PROTO REQUIRED dri3proto)

add_library(DRI3PROTO INTERFACE IMPORTED)
set_target_properties(DRI3PROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DRI3PROTO_INCLUDE_DIRS}")
set_target_properties(DRI3PROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DRI3PROTO_LIBRARY_DIRS}")
set_target_properties(DRI3PROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DRI3PROTO_LIB_LIBRARIES}")
set_target_properties(DRI3PROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DRI3PROTO_CFLAGS_OTHER}")
