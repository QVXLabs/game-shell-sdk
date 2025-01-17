
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_RENDER REQUIRED xcb-render)

add_library(XCB_RENDER INTERFACE IMPORTED)
set_target_properties(XCB_RENDER PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_RENDER_INCLUDE_DIRS}")
set_target_properties(XCB_RENDER PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_RENDER_LIBRARY_DIRS}")
set_target_properties(XCB_RENDER PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_RENDER_LIB_LIBRARIES}")
set_target_properties(XCB_RENDER PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_RENDER_CFLAGS_OTHER}")
