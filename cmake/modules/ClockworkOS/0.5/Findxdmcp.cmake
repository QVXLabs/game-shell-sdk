
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XDMCP REQUIRED xdmcp)

add_library(XDMCP INTERFACE IMPORTED)
set_target_properties(XDMCP PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XDMCP_INCLUDE_DIRS}")
set_target_properties(XDMCP PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XDMCP_LIBRARY_DIRS}")
set_target_properties(XDMCP PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XDMCP_LIB_LIBRARIES}")
set_target_properties(XDMCP PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XDMCP_CFLAGS_OTHER}")
