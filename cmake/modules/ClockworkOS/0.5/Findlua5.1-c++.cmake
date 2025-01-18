
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA5.1_C++ REQUIRED lua5.1-c++)

add_library(LUA5.1_C++ INTERFACE IMPORTED)
set_target_properties(LUA5.1_C++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA5.1_C++_INCLUDE_DIRS}")
set_target_properties(LUA5.1_C++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA5.1_C++_LIBRARY_DIRS}")
set_target_properties(LUA5.1_C++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA5.1_C++_LIB_LIBRARIES}")
set_target_properties(LUA5.1_C++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA5.1_C++_CFLAGS_OTHER}")
