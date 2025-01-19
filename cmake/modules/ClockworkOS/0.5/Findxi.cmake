
find_package(PkgConfig REQUIRED)

pkg_check_modules(XI REQUIRED xi)

add_library(xi::xi INTERFACE IMPORTED)
set_target_properties(xi::xi PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XI_INCLUDE_DIRS}")
set_target_properties(xi::xi PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XI_LIBRARY_DIRS}")
set_target_properties(xi::xi PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XI_LIB_LIBRARIES}")
set_target_properties(xi::xi PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XI_CFLAGS_OTHER}")
