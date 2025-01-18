
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_SYNC REQUIRED xcb-sync)

add_library(XCB_SYNC INTERFACE IMPORTED)
set_target_properties(XCB_SYNC PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_SYNC_INCLUDE_DIRS}")
set_target_properties(XCB_SYNC PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_SYNC_LIBRARY_DIRS}")
set_target_properties(XCB_SYNC PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_SYNC_LIB_LIBRARIES}")
set_target_properties(XCB_SYNC PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_SYNC_CFLAGS_OTHER}")
