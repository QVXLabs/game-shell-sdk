
find_package(PkgConfig REQUIRED)

pkg_check_modules(POPT REQUIRED popt)

add_library(popt::popt INTERFACE IMPORTED)
set_target_properties(popt::popt PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${POPT_INCLUDE_DIRS}")
set_target_properties(popt::popt PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${POPT_LIBRARY_DIRS}")
set_target_properties(popt::popt PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${POPT_LIB_LIBRARIES}")
set_target_properties(popt::popt PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${POPT_CFLAGS_OTHER}")
