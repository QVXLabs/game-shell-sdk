
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XORG_SERVER REQUIRED xorg-server)

add_library(XORG_SERVER INTERFACE IMPORTED)
set_target_properties(XORG_SERVER PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XORG_SERVER_INCLUDE_DIRS}")
set_target_properties(XORG_SERVER PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XORG_SERVER_LIBRARY_DIRS}")
set_target_properties(XORG_SERVER PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XORG_SERVER_LIB_LIBRARIES}")
set_target_properties(XORG_SERVER PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XORG_SERVER_CFLAGS_OTHER}")
