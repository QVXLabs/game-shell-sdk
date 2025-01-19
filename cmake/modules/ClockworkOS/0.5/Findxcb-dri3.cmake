
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_DRI3 REQUIRED xcb-dri3)

add_library(xcb_dri3::xcb_dri3 INTERFACE IMPORTED)
set_target_properties(xcb_dri3::xcb_dri3 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_DRI3_INCLUDE_DIRS}")
set_target_properties(xcb_dri3::xcb_dri3 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_DRI3_LIBRARY_DIRS}")
set_target_properties(xcb_dri3::xcb_dri3 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_DRI3_LIB_LIBRARIES}")
set_target_properties(xcb_dri3::xcb_dri3 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_DRI3_CFLAGS_OTHER}")
