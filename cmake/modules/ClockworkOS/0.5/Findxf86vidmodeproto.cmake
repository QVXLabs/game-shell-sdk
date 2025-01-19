
find_package(PkgConfig REQUIRED)

pkg_check_modules(XF86VIDMODEPROTO REQUIRED xf86vidmodeproto)

add_library(xf86vidmodeproto::xf86vidmodeproto INTERFACE IMPORTED)
set_target_properties(xf86vidmodeproto::xf86vidmodeproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XF86VIDMODEPROTO_INCLUDE_DIRS}")
set_target_properties(xf86vidmodeproto::xf86vidmodeproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XF86VIDMODEPROTO_LIBRARY_DIRS}")
set_target_properties(xf86vidmodeproto::xf86vidmodeproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XF86VIDMODEPROTO_LIB_LIBRARIES}")
set_target_properties(xf86vidmodeproto::xf86vidmodeproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XF86VIDMODEPROTO_CFLAGS_OTHER}")
