
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XFIXES REQUIRED xfixes)

add_library(XFIXES INTERFACE IMPORTED)
set_target_properties(XFIXES PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XFIXES_INCLUDE_DIRS}")
set_target_properties(XFIXES PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XFIXES_LIBRARY_DIRS}")
set_target_properties(XFIXES PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XFIXES_LIB_LIBRARIES}")
set_target_properties(XFIXES PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XFIXES_CFLAGS_OTHER}")
