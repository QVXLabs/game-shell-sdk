
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA53_C++ REQUIRED lua53-c++)

add_library(LUA53_C++ INTERFACE IMPORTED)
set_target_properties(LUA53_C++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA53_C++_INCLUDE_DIRS}")
set_target_properties(LUA53_C++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA53_C++_LIBRARY_DIRS}")
set_target_properties(LUA53_C++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA53_C++_LIB_LIBRARIES}")
set_target_properties(LUA53_C++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA53_C++_CFLAGS_OTHER}")
