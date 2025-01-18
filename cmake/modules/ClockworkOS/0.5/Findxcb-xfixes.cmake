
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_XFIXES REQUIRED xcb-xfixes)

add_library(XCB_XFIXES INTERFACE IMPORTED)
set_target_properties(XCB_XFIXES PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_XFIXES_INCLUDE_DIRS}")
set_target_properties(XCB_XFIXES PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_XFIXES_LIBRARY_DIRS}")
set_target_properties(XCB_XFIXES PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_XFIXES_LIB_LIBRARIES}")
set_target_properties(XCB_XFIXES PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_XFIXES_CFLAGS_OTHER}")
