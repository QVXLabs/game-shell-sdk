
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XRENDER REQUIRED xrender)

add_library(XRENDER INTERFACE IMPORTED)
set_target_properties(XRENDER PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XRENDER_INCLUDE_DIRS}")
set_target_properties(XRENDER PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XRENDER_LIBRARY_DIRS}")
set_target_properties(XRENDER PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XRENDER_LIB_LIBRARIES}")
set_target_properties(XRENDER PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XRENDER_CFLAGS_OTHER}")
