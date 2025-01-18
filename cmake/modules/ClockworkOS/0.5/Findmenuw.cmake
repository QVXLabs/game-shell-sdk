
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(MENUW REQUIRED menuw)

add_library(MENUW INTERFACE IMPORTED)
set_target_properties(MENUW PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${MENUW_INCLUDE_DIRS}")
set_target_properties(MENUW PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${MENUW_LIBRARY_DIRS}")
set_target_properties(MENUW PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${MENUW_LIB_LIBRARIES}")
set_target_properties(MENUW PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${MENUW_CFLAGS_OTHER}")
