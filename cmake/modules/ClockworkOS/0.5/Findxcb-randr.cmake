
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_RANDR REQUIRED xcb-randr)

add_library(XCB_RANDR INTERFACE IMPORTED)
set_target_properties(XCB_RANDR PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_RANDR_INCLUDE_DIRS}")
set_target_properties(XCB_RANDR PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_RANDR_LIBRARY_DIRS}")
set_target_properties(XCB_RANDR PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_RANDR_LIB_LIBRARIES}")
set_target_properties(XCB_RANDR PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_RANDR_CFLAGS_OTHER}")
