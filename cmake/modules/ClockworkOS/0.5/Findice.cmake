
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICE REQUIRED ice)

add_library(ice::ice INTERFACE IMPORTED)
set_target_properties(ice::ice PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICE_INCLUDE_DIRS}")
set_target_properties(ice::ice PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICE_LIBRARY_DIRS}")
set_target_properties(ice::ice PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICE_LIBRARIES}")
set_target_properties(ice::ice PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICE_CFLAGS_OTHER}")
