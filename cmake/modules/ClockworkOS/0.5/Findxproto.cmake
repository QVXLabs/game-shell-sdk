
find_package(PkgConfig REQUIRED)

pkg_check_modules(XPROTO REQUIRED xproto)

add_library(xproto::xproto INTERFACE IMPORTED)
set_target_properties(xproto::xproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XPROTO_INCLUDE_DIRS}")
set_target_properties(xproto::xproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XPROTO_LIBRARY_DIRS}")
set_target_properties(xproto::xproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XPROTO_LIBRARIES}")
set_target_properties(xproto::xproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XPROTO_CFLAGS_OTHER}")
