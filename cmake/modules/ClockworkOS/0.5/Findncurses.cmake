
find_package(PkgConfig REQUIRED)

pkg_check_modules(NCURSES REQUIRED ncurses)

add_library(ncurses::ncurses INTERFACE IMPORTED)
set_target_properties(ncurses::ncurses PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NCURSES_INCLUDE_DIRS}")
set_target_properties(ncurses::ncurses PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NCURSES_LIBRARY_DIRS}")
set_target_properties(ncurses::ncurses PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NCURSES_LIB_LIBRARIES}")
set_target_properties(ncurses::ncurses PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NCURSES_CFLAGS_OTHER}")
