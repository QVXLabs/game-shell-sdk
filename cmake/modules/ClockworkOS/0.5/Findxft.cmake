
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XFT REQUIRED xft)

add_library(XFT INTERFACE IMPORTED)
set_target_properties(XFT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XFT_INCLUDE_DIRS}")
set_target_properties(XFT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XFT_LIBRARY_DIRS}")
set_target_properties(XFT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XFT_LIB_LIBRARIES}")
set_target_properties(XFT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XFT_CFLAGS_OTHER}")
