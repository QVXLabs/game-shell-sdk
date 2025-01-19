
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA_5.1 REQUIRED lua-5.1)

add_library(lua_5.1::lua_5.1 INTERFACE IMPORTED)
set_target_properties(lua_5.1::lua_5.1 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA_5.1_INCLUDE_DIRS}")
set_target_properties(lua_5.1::lua_5.1 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA_5.1_LIBRARY_DIRS}")
set_target_properties(lua_5.1::lua_5.1 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA_5.1_LIB_LIBRARIES}")
set_target_properties(lua_5.1::lua_5.1 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA_5.1_CFLAGS_OTHER}")
