
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_PRESENT REQUIRED xcb-present)

add_library(xcb_present::xcb_present INTERFACE IMPORTED)
set_target_properties(xcb_present::xcb_present PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_PRESENT_INCLUDE_DIRS}")
set_target_properties(xcb_present::xcb_present PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_PRESENT_LIBRARY_DIRS}")
set_target_properties(xcb_present::xcb_present PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_PRESENT_LIBRARIES}")
set_target_properties(xcb_present::xcb_present PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_PRESENT_CFLAGS_OTHER}")
