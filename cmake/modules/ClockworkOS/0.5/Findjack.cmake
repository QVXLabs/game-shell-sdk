
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(JACK REQUIRED jack)

add_library(JACK INTERFACE IMPORTED)
set_target_properties(JACK PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${JACK_INCLUDE_DIRS}")
set_target_properties(JACK PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${JACK_LIBRARY_DIRS}")
set_target_properties(JACK PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${JACK_LIB_LIBRARIES}")
set_target_properties(JACK PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${JACK_CFLAGS_OTHER}")
