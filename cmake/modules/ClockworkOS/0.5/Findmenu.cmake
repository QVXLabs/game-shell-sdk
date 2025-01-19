
find_package(PkgConfig REQUIRED)

pkg_check_modules(MENU REQUIRED menu)

add_library(menu::menu INTERFACE IMPORTED)
set_target_properties(menu::menu PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${MENU_INCLUDE_DIRS}")
set_target_properties(menu::menu PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${MENU_LIBRARY_DIRS}")
set_target_properties(menu::menu PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${MENU_LIB_LIBRARIES}")
set_target_properties(menu::menu PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${MENU_CFLAGS_OTHER}")
