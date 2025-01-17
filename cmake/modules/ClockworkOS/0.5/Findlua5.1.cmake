
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUA5.1 REQUIRED lua5.1)

add_library(LUA5.1 INTERFACE IMPORTED)
set_target_properties(LUA5.1 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUA5.1_INCLUDE_DIRS}")
set_target_properties(LUA5.1 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUA5.1_LIBRARY_DIRS}")
set_target_properties(LUA5.1 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUA5.1_LIB_LIBRARIES}")
set_target_properties(LUA5.1 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUA5.1_CFLAGS_OTHER}")
