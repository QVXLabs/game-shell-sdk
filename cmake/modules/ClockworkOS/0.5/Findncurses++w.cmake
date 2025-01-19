
find_package(PkgConfig REQUIRED)

pkg_check_modules(NCURSES++W REQUIRED ncurses++w)

add_library(ncurses++w::ncurses++w INTERFACE IMPORTED)
set_target_properties(ncurses++w::ncurses++w PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NCURSES++W_INCLUDE_DIRS}")
set_target_properties(ncurses++w::ncurses++w PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NCURSES++W_LIBRARY_DIRS}")
set_target_properties(ncurses++w::ncurses++w PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NCURSES++W_LIB_LIBRARIES}")
set_target_properties(ncurses++w::ncurses++w PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NCURSES++W_CFLAGS_OTHER}")
