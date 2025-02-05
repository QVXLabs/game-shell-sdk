
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA5.1_C++ REQUIRED lua5.1-c++)

add_library(lua5.1_c++::lua5.1_c++ INTERFACE IMPORTED)
set_target_properties(lua5.1_c++::lua5.1_c++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA5.1_C++_INCLUDE_DIRS}")
set_target_properties(lua5.1_c++::lua5.1_c++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA5.1_C++_LIBRARY_DIRS}")
set_target_properties(lua5.1_c++::lua5.1_c++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA5.1_C++_LIBRARIES}")
set_target_properties(lua5.1_c++::lua5.1_c++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA5.1_C++_CFLAGS_OTHER}")
