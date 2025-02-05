
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA53 REQUIRED lua53)

add_library(lua53::lua53 INTERFACE IMPORTED)
set_target_properties(lua53::lua53 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA53_INCLUDE_DIRS}")
set_target_properties(lua53::lua53 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA53_LIBRARY_DIRS}")
set_target_properties(lua53::lua53 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA53_LIBRARIES}")
set_target_properties(lua53::lua53 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA53_CFLAGS_OTHER}")
