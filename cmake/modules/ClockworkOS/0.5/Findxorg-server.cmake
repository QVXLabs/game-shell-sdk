
find_package(PkgConfig REQUIRED)

pkg_check_modules(XORG_SERVER REQUIRED xorg-server)

add_library(xorg_server::xorg_server INTERFACE IMPORTED)
set_target_properties(xorg_server::xorg_server PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XORG_SERVER_INCLUDE_DIRS}")
set_target_properties(xorg_server::xorg_server PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XORG_SERVER_LIBRARY_DIRS}")
set_target_properties(xorg_server::xorg_server PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XORG_SERVER_LIBRARIES}")
set_target_properties(xorg_server::xorg_server PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XORG_SERVER_CFLAGS_OTHER}")
