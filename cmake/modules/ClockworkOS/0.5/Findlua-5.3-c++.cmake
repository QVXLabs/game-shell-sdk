
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA_5.3_C++ REQUIRED lua-5.3-c++)

add_library(LUA_5.3_C++ INTERFACE IMPORTED)
set_target_properties(LUA_5.3_C++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA_5.3_C++_INCLUDE_DIRS}")
set_target_properties(LUA_5.3_C++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA_5.3_C++_LIBRARY_DIRS}")
set_target_properties(LUA_5.3_C++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA_5.3_C++_LIB_LIBRARIES}")
set_target_properties(LUA_5.3_C++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA_5.3_C++_CFLAGS_OTHER}")
