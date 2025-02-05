
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_SHAPE REQUIRED xcb-shape)

add_library(xcb_shape::xcb_shape INTERFACE IMPORTED)
set_target_properties(xcb_shape::xcb_shape PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_SHAPE_INCLUDE_DIRS}")
set_target_properties(xcb_shape::xcb_shape PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_SHAPE_LIBRARY_DIRS}")
set_target_properties(xcb_shape::xcb_shape PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_SHAPE_LIBRARIES}")
set_target_properties(xcb_shape::xcb_shape PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_SHAPE_CFLAGS_OTHER}")
