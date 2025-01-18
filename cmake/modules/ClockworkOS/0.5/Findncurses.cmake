
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(NCURSES REQUIRED ncurses)

add_library(NCURSES INTERFACE IMPORTED)
set_target_properties(NCURSES PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NCURSES_INCLUDE_DIRS}")
set_target_properties(NCURSES PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NCURSES_LIBRARY_DIRS}")
set_target_properties(NCURSES PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NCURSES_LIB_LIBRARIES}")
set_target_properties(NCURSES PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NCURSES_CFLAGS_OTHER}")
