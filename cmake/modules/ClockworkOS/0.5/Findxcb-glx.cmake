
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_GLX REQUIRED xcb-glx)

add_library(xcb_glx::xcb_glx INTERFACE IMPORTED)
set_target_properties(xcb_glx::xcb_glx PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_GLX_INCLUDE_DIRS}")
set_target_properties(xcb_glx::xcb_glx PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_GLX_LIBRARY_DIRS}")
set_target_properties(xcb_glx::xcb_glx PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_GLX_LIBRARIES}")
set_target_properties(xcb_glx::xcb_glx PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_GLX_CFLAGS_OTHER}")
