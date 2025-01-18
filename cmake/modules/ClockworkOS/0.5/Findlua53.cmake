
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA53 REQUIRED lua53)

add_library(LUA53 INTERFACE IMPORTED)
set_target_properties(LUA53 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA53_INCLUDE_DIRS}")
set_target_properties(LUA53 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA53_LIBRARY_DIRS}")
set_target_properties(LUA53 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA53_LIB_LIBRARIES}")
set_target_properties(LUA53 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA53_CFLAGS_OTHER}")
