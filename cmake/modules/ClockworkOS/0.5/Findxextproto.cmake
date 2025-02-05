
find_package(PkgConfig REQUIRED)

pkg_check_modules(XEXTPROTO REQUIRED xextproto)

add_library(xextproto::xextproto INTERFACE IMPORTED)
set_target_properties(xextproto::xextproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XEXTPROTO_INCLUDE_DIRS}")
set_target_properties(xextproto::xextproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XEXTPROTO_LIBRARY_DIRS}")
set_target_properties(xextproto::xextproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XEXTPROTO_LIBRARIES}")
set_target_properties(xextproto::xextproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XEXTPROTO_CFLAGS_OTHER}")
