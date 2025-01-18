
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XMUU REQUIRED xmuu)

add_library(XMUU INTERFACE IMPORTED)
set_target_properties(XMUU PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XMUU_INCLUDE_DIRS}")
set_target_properties(XMUU PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XMUU_LIBRARY_DIRS}")
set_target_properties(XMUU PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XMUU_LIB_LIBRARIES}")
set_target_properties(XMUU PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XMUU_CFLAGS_OTHER}")
