
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_DRI3 REQUIRED xcb-dri3)

add_library(XCB_DRI3 INTERFACE IMPORTED)
set_target_properties(XCB_DRI3 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_DRI3_INCLUDE_DIRS}")
set_target_properties(XCB_DRI3 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_DRI3_LIBRARY_DIRS}")
set_target_properties(XCB_DRI3 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_DRI3_LIB_LIBRARIES}")
set_target_properties(XCB_DRI3 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_DRI3_CFLAGS_OTHER}")
