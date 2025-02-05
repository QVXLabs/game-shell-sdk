
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB REQUIRED xcb)

add_library(xcb::xcb INTERFACE IMPORTED)
set_target_properties(xcb::xcb PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_INCLUDE_DIRS}")
set_target_properties(xcb::xcb PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_LIBRARY_DIRS}")
set_target_properties(xcb::xcb PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_LIBRARIES}")
set_target_properties(xcb::xcb PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_CFLAGS_OTHER}")
