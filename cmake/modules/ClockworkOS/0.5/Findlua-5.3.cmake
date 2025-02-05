
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA_5.3 REQUIRED lua-5.3)

add_library(lua_5.3::lua_5.3 INTERFACE IMPORTED)
set_target_properties(lua_5.3::lua_5.3 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA_5.3_INCLUDE_DIRS}")
set_target_properties(lua_5.3::lua_5.3 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA_5.3_LIBRARY_DIRS}")
set_target_properties(lua_5.3::lua_5.3 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA_5.3_LIBRARIES}")
set_target_properties(lua_5.3::lua_5.3 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA_5.3_CFLAGS_OTHER}")
