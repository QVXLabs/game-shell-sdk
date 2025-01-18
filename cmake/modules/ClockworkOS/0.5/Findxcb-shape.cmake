
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_SHAPE REQUIRED xcb-shape)

add_library(XCB_SHAPE INTERFACE IMPORTED)
set_target_properties(XCB_SHAPE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_SHAPE_INCLUDE_DIRS}")
set_target_properties(XCB_SHAPE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_SHAPE_LIBRARY_DIRS}")
set_target_properties(XCB_SHAPE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_SHAPE_LIB_LIBRARIES}")
set_target_properties(XCB_SHAPE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_SHAPE_CFLAGS_OTHER}")
