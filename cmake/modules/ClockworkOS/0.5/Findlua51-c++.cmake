
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA51_C++ REQUIRED lua51-c++)

add_library(lua51_c++::lua51_c++ INTERFACE IMPORTED)
set_target_properties(lua51_c++::lua51_c++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA51_C++_INCLUDE_DIRS}")
set_target_properties(lua51_c++::lua51_c++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA51_C++_LIBRARY_DIRS}")
set_target_properties(lua51_c++::lua51_c++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA51_C++_LIBRARIES}")
set_target_properties(lua51_c++::lua51_c++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA51_C++_CFLAGS_OTHER}")
