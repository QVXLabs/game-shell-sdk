
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XEXT REQUIRED xext)

add_library(XEXT INTERFACE IMPORTED)
set_target_properties(XEXT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XEXT_INCLUDE_DIRS}")
set_target_properties(XEXT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XEXT_LIBRARY_DIRS}")
set_target_properties(XEXT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XEXT_LIB_LIBRARIES}")
set_target_properties(XEXT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XEXT_CFLAGS_OTHER}")
