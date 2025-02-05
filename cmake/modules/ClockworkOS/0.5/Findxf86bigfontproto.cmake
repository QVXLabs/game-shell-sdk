
find_package(PkgConfig REQUIRED)

pkg_check_modules(XF86BIGFONTPROTO REQUIRED xf86bigfontproto)

add_library(xf86bigfontproto::xf86bigfontproto INTERFACE IMPORTED)
set_target_properties(xf86bigfontproto::xf86bigfontproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XF86BIGFONTPROTO_INCLUDE_DIRS}")
set_target_properties(xf86bigfontproto::xf86bigfontproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XF86BIGFONTPROTO_LIBRARY_DIRS}")
set_target_properties(xf86bigfontproto::xf86bigfontproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XF86BIGFONTPROTO_LIBRARIES}")
set_target_properties(xf86bigfontproto::xf86bigfontproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XF86BIGFONTPROTO_CFLAGS_OTHER}")
