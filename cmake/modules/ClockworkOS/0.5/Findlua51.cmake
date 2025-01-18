
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA51 REQUIRED lua51)

add_library(LUA51 INTERFACE IMPORTED)
set_target_properties(LUA51 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA51_INCLUDE_DIRS}")
set_target_properties(LUA51 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA51_LIBRARY_DIRS}")
set_target_properties(LUA51 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA51_LIB_LIBRARIES}")
set_target_properties(LUA51 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA51_CFLAGS_OTHER}")
