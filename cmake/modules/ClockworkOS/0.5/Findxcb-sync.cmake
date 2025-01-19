
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_SYNC REQUIRED xcb-sync)

add_library(xcb_sync::xcb_sync INTERFACE IMPORTED)
set_target_properties(xcb_sync::xcb_sync PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_SYNC_INCLUDE_DIRS}")
set_target_properties(xcb_sync::xcb_sync PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_SYNC_LIBRARY_DIRS}")
set_target_properties(xcb_sync::xcb_sync PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_SYNC_LIB_LIBRARIES}")
set_target_properties(xcb_sync::xcb_sync PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_SYNC_CFLAGS_OTHER}")
