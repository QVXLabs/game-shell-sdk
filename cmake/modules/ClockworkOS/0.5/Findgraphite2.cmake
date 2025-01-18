
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GRAPHITE2 REQUIRED graphite2)

add_library(GRAPHITE2 INTERFACE IMPORTED)
set_target_properties(GRAPHITE2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GRAPHITE2_INCLUDE_DIRS}")
set_target_properties(GRAPHITE2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GRAPHITE2_LIBRARY_DIRS}")
set_target_properties(GRAPHITE2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GRAPHITE2_LIB_LIBRARIES}")
set_target_properties(GRAPHITE2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GRAPHITE2_CFLAGS_OTHER}")
