
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(X11 REQUIRED x11)

add_library(X11 INTERFACE IMPORTED)
set_target_properties(X11 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${X11_INCLUDE_DIRS}")
set_target_properties(X11 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${X11_LIBRARY_DIRS}")
set_target_properties(X11 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${X11_LIB_LIBRARIES}")
set_target_properties(X11 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${X11_CFLAGS_OTHER}")
