
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANELW REQUIRED panelw)

add_library(panelw::panelw INTERFACE IMPORTED)
set_target_properties(panelw::panelw PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANELW_INCLUDE_DIRS}")
set_target_properties(panelw::panelw PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANELW_LIBRARY_DIRS}")
set_target_properties(panelw::panelw PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANELW_LIB_LIBRARIES}")
set_target_properties(panelw::panelw PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANELW_CFLAGS_OTHER}")
