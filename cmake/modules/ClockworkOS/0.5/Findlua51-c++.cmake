
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA51_C++ REQUIRED lua51-c++)

add_library(LUA51_C++ INTERFACE IMPORTED)
set_target_properties(LUA51_C++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA51_C++_INCLUDE_DIRS}")
set_target_properties(LUA51_C++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA51_C++_LIBRARY_DIRS}")
set_target_properties(LUA51_C++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA51_C++_LIB_LIBRARIES}")
set_target_properties(LUA51_C++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA51_C++_CFLAGS_OTHER}")
