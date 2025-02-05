
find_package(PkgConfig REQUIRED)

pkg_check_modules(FORMW REQUIRED formw)

add_library(formw::formw INTERFACE IMPORTED)
set_target_properties(formw::formw PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FORMW_INCLUDE_DIRS}")
set_target_properties(formw::formw PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FORMW_LIBRARY_DIRS}")
set_target_properties(formw::formw PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FORMW_LIBRARIES}")
set_target_properties(formw::formw PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FORMW_CFLAGS_OTHER}")
