
find_package(PkgConfig REQUIRED)

pkg_check_modules(XKBFILE REQUIRED xkbfile)

add_library(xkbfile::xkbfile INTERFACE IMPORTED)
set_target_properties(xkbfile::xkbfile PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XKBFILE_INCLUDE_DIRS}")
set_target_properties(xkbfile::xkbfile PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XKBFILE_LIBRARY_DIRS}")
set_target_properties(xkbfile::xkbfile PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XKBFILE_LIBRARIES}")
set_target_properties(xkbfile::xkbfile PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XKBFILE_CFLAGS_OTHER}")
