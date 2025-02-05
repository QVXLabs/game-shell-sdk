
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_XFIXES REQUIRED xcb-xfixes)

add_library(xcb_xfixes::xcb_xfixes INTERFACE IMPORTED)
set_target_properties(xcb_xfixes::xcb_xfixes PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_XFIXES_INCLUDE_DIRS}")
set_target_properties(xcb_xfixes::xcb_xfixes PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_XFIXES_LIBRARY_DIRS}")
set_target_properties(xcb_xfixes::xcb_xfixes PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_XFIXES_LIBRARIES}")
set_target_properties(xcb_xfixes::xcb_xfixes PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_XFIXES_CFLAGS_OTHER}")
