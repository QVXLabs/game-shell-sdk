
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(DRI2PROTO REQUIRED dri2proto)

add_library(DRI2PROTO INTERFACE IMPORTED)
set_target_properties(DRI2PROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DRI2PROTO_INCLUDE_DIRS}")
set_target_properties(DRI2PROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DRI2PROTO_LIBRARY_DIRS}")
set_target_properties(DRI2PROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DRI2PROTO_LIB_LIBRARIES}")
set_target_properties(DRI2PROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DRI2PROTO_CFLAGS_OTHER}")
