
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_PRESENT REQUIRED xcb-present)

add_library(XCB_PRESENT INTERFACE IMPORTED)
set_target_properties(XCB_PRESENT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_PRESENT_INCLUDE_DIRS}")
set_target_properties(XCB_PRESENT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_PRESENT_LIBRARY_DIRS}")
set_target_properties(XCB_PRESENT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_PRESENT_LIB_LIBRARIES}")
set_target_properties(XCB_PRESENT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_PRESENT_CFLAGS_OTHER}")
