
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(NCURSES++W REQUIRED ncurses++w)

add_library(NCURSES++W INTERFACE IMPORTED)
set_target_properties(NCURSES++W PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NCURSES++W_INCLUDE_DIRS}")
set_target_properties(NCURSES++W PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NCURSES++W_LIBRARY_DIRS}")
set_target_properties(NCURSES++W PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NCURSES++W_LIB_LIBRARIES}")
set_target_properties(NCURSES++W PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NCURSES++W_CFLAGS_OTHER}")
