
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_GLX REQUIRED xcb-glx)

add_library(XCB_GLX INTERFACE IMPORTED)
set_target_properties(XCB_GLX PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_GLX_INCLUDE_DIRS}")
set_target_properties(XCB_GLX PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_GLX_LIBRARY_DIRS}")
set_target_properties(XCB_GLX PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_GLX_LIB_LIBRARIES}")
set_target_properties(XCB_GLX PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_GLX_CFLAGS_OTHER}")
