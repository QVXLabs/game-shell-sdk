
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CACA++ REQUIRED caca++)

add_library(CACA++ INTERFACE IMPORTED)
set_target_properties(CACA++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CACA++_INCLUDE_DIRS}")
set_target_properties(CACA++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CACA++_LIBRARY_DIRS}")
set_target_properties(CACA++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CACA++_LIB_LIBRARIES}")
set_target_properties(CACA++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CACA++_CFLAGS_OTHER}")
