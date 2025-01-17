
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA_5.3 REQUIRED lua-5.3)

add_library(LUA_5.3 INTERFACE IMPORTED)
set_target_properties(LUA_5.3 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA_5.3_INCLUDE_DIRS}")
set_target_properties(LUA_5.3 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA_5.3_LIBRARY_DIRS}")
set_target_properties(LUA_5.3 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA_5.3_LIB_LIBRARIES}")
set_target_properties(LUA_5.3 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA_5.3_CFLAGS_OTHER}")
