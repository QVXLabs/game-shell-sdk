
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XKBFILE REQUIRED xkbfile)

add_library(XKBFILE INTERFACE IMPORTED)
set_target_properties(XKBFILE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XKBFILE_INCLUDE_DIRS}")
set_target_properties(XKBFILE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XKBFILE_LIBRARY_DIRS}")
set_target_properties(XKBFILE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XKBFILE_LIB_LIBRARIES}")
set_target_properties(XKBFILE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XKBFILE_CFLAGS_OTHER}")
