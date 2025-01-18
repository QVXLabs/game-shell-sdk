
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(TINFO REQUIRED tinfo)

add_library(TINFO INTERFACE IMPORTED)
set_target_properties(TINFO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${TINFO_INCLUDE_DIRS}")
set_target_properties(TINFO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${TINFO_LIBRARY_DIRS}")
set_target_properties(TINFO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${TINFO_LIB_LIBRARIES}")
set_target_properties(TINFO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${TINFO_CFLAGS_OTHER}")
