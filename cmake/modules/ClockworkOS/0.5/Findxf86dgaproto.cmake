
find_package(PkgConfig REQUIRED)

pkg_check_modules(XF86DGAPROTO REQUIRED xf86dgaproto)

add_library(xf86dgaproto::xf86dgaproto INTERFACE IMPORTED)
set_target_properties(xf86dgaproto::xf86dgaproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XF86DGAPROTO_INCLUDE_DIRS}")
set_target_properties(xf86dgaproto::xf86dgaproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XF86DGAPROTO_LIBRARY_DIRS}")
set_target_properties(xf86dgaproto::xf86dgaproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XF86DGAPROTO_LIB_LIBRARIES}")
set_target_properties(xf86dgaproto::xf86dgaproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XF86DGAPROTO_CFLAGS_OTHER}")
