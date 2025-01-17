
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XAW7 REQUIRED xaw7)

add_library(XAW7 INTERFACE IMPORTED)
set_target_properties(XAW7 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XAW7_INCLUDE_DIRS}")
set_target_properties(XAW7 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XAW7_LIBRARY_DIRS}")
set_target_properties(XAW7 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XAW7_LIB_LIBRARIES}")
set_target_properties(XAW7 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XAW7_CFLAGS_OTHER}")
