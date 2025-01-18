
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XT REQUIRED xt)

add_library(XT INTERFACE IMPORTED)
set_target_properties(XT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XT_INCLUDE_DIRS}")
set_target_properties(XT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XT_LIBRARY_DIRS}")
set_target_properties(XT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XT_LIB_LIBRARIES}")
set_target_properties(XT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XT_CFLAGS_OTHER}")
