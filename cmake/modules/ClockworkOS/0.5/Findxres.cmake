
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XRES REQUIRED xres)

add_library(XRES INTERFACE IMPORTED)
set_target_properties(XRES PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XRES_INCLUDE_DIRS}")
set_target_properties(XRES PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XRES_LIBRARY_DIRS}")
set_target_properties(XRES PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XRES_LIB_LIBRARIES}")
set_target_properties(XRES PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XRES_CFLAGS_OTHER}")
