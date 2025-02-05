
find_package(PkgConfig REQUIRED)

pkg_check_modules(XXF86DGA REQUIRED xxf86dga)

add_library(xxf86dga::xxf86dga INTERFACE IMPORTED)
set_target_properties(xxf86dga::xxf86dga PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XXF86DGA_INCLUDE_DIRS}")
set_target_properties(xxf86dga::xxf86dga PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XXF86DGA_LIBRARY_DIRS}")
set_target_properties(xxf86dga::xxf86dga PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XXF86DGA_LIBRARIES}")
set_target_properties(xxf86dga::xxf86dga PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XXF86DGA_CFLAGS_OTHER}")
