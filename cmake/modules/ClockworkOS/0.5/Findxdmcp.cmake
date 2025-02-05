
find_package(PkgConfig REQUIRED)

pkg_check_modules(XDMCP REQUIRED xdmcp)

add_library(xdmcp::xdmcp INTERFACE IMPORTED)
set_target_properties(xdmcp::xdmcp PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XDMCP_INCLUDE_DIRS}")
set_target_properties(xdmcp::xdmcp PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XDMCP_LIBRARY_DIRS}")
set_target_properties(xdmcp::xdmcp PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XDMCP_LIBRARIES}")
set_target_properties(xdmcp::xdmcp PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XDMCP_CFLAGS_OTHER}")
