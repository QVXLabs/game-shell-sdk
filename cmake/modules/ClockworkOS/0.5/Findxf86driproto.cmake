
find_package(PkgConfig REQUIRED)

pkg_check_modules(XF86DRIPROTO REQUIRED xf86driproto)

add_library(xf86driproto::xf86driproto INTERFACE IMPORTED)
set_target_properties(xf86driproto::xf86driproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XF86DRIPROTO_INCLUDE_DIRS}")
set_target_properties(xf86driproto::xf86driproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XF86DRIPROTO_LIBRARY_DIRS}")
set_target_properties(xf86driproto::xf86driproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XF86DRIPROTO_LIB_LIBRARIES}")
set_target_properties(xf86driproto::xf86driproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XF86DRIPROTO_CFLAGS_OTHER}")
