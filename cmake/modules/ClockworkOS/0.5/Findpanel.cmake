
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANEL REQUIRED panel)

add_library(panel::panel INTERFACE IMPORTED)
set_target_properties(panel::panel PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANEL_INCLUDE_DIRS}")
set_target_properties(panel::panel PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANEL_LIBRARY_DIRS}")
set_target_properties(panel::panel PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANEL_LIBRARIES}")
set_target_properties(panel::panel PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANEL_CFLAGS_OTHER}")
