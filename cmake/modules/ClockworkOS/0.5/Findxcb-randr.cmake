
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_RANDR REQUIRED xcb-randr)

add_library(xcb_randr::xcb_randr INTERFACE IMPORTED)
set_target_properties(xcb_randr::xcb_randr PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_RANDR_INCLUDE_DIRS}")
set_target_properties(xcb_randr::xcb_randr PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_RANDR_LIBRARY_DIRS}")
set_target_properties(xcb_randr::xcb_randr PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_RANDR_LIBRARIES}")
set_target_properties(xcb_randr::xcb_randr PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_RANDR_CFLAGS_OTHER}")
