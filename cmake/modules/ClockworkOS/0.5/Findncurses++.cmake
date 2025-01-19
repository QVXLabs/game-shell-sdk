
find_package(PkgConfig REQUIRED)

pkg_check_modules(NCURSES++ REQUIRED ncurses++)

add_library(ncurses++::ncurses++ INTERFACE IMPORTED)
set_target_properties(ncurses++::ncurses++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NCURSES++_INCLUDE_DIRS}")
set_target_properties(ncurses++::ncurses++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NCURSES++_LIBRARY_DIRS}")
set_target_properties(ncurses++::ncurses++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NCURSES++_LIB_LIBRARIES}")
set_target_properties(ncurses++::ncurses++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NCURSES++_CFLAGS_OTHER}")
