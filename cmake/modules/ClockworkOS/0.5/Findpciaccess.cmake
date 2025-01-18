
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PCIACCESS REQUIRED pciaccess)

add_library(PCIACCESS INTERFACE IMPORTED)
set_target_properties(PCIACCESS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PCIACCESS_INCLUDE_DIRS}")
set_target_properties(PCIACCESS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PCIACCESS_LIBRARY_DIRS}")
set_target_properties(PCIACCESS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PCIACCESS_LIB_LIBRARIES}")
set_target_properties(PCIACCESS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PCIACCESS_CFLAGS_OTHER}")
