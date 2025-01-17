
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANGOCAIRO REQUIRED pangocairo)

add_library(PANGOCAIRO INTERFACE IMPORTED)
set_target_properties(PANGOCAIRO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANGOCAIRO_INCLUDE_DIRS}")
set_target_properties(PANGOCAIRO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANGOCAIRO_LIBRARY_DIRS}")
set_target_properties(PANGOCAIRO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANGOCAIRO_LIB_LIBRARIES}")
set_target_properties(PANGOCAIRO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANGOCAIRO_CFLAGS_OTHER}")
