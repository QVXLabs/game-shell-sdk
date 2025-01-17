
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(X11_XCB REQUIRED x11-xcb)

add_library(X11_XCB INTERFACE IMPORTED)
set_target_properties(X11_XCB PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${X11_XCB_INCLUDE_DIRS}")
set_target_properties(X11_XCB PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${X11_XCB_LIBRARY_DIRS}")
set_target_properties(X11_XCB PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${X11_XCB_LIB_LIBRARIES}")
set_target_properties(X11_XCB PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${X11_XCB_CFLAGS_OTHER}")
