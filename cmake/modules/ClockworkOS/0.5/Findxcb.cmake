
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB REQUIRED xcb)

add_library(XCB INTERFACE IMPORTED)
set_target_properties(XCB PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_INCLUDE_DIRS}")
set_target_properties(XCB PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_LIBRARY_DIRS}")
set_target_properties(XCB PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_LIB_LIBRARIES}")
set_target_properties(XCB PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_CFLAGS_OTHER}")
