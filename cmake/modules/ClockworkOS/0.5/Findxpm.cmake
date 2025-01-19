
find_package(PkgConfig REQUIRED)

pkg_check_modules(XPM REQUIRED xpm)

add_library(xpm::xpm INTERFACE IMPORTED)
set_target_properties(xpm::xpm PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XPM_INCLUDE_DIRS}")
set_target_properties(xpm::xpm PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XPM_LIBRARY_DIRS}")
set_target_properties(xpm::xpm PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XPM_LIB_LIBRARIES}")
set_target_properties(xpm::xpm PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XPM_CFLAGS_OTHER}")
