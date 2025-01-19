
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA53_C++ REQUIRED lua53-c++)

add_library(lua53_c++::lua53_c++ INTERFACE IMPORTED)
set_target_properties(lua53_c++::lua53_c++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA53_C++_INCLUDE_DIRS}")
set_target_properties(lua53_c++::lua53_c++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA53_C++_LIBRARY_DIRS}")
set_target_properties(lua53_c++::lua53_c++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA53_C++_LIB_LIBRARIES}")
set_target_properties(lua53_c++::lua53_c++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA53_C++_CFLAGS_OTHER}")
