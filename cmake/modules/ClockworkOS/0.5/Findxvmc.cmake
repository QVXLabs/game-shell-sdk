
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XVMC REQUIRED xvmc)

add_library(XVMC INTERFACE IMPORTED)
set_target_properties(XVMC PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XVMC_INCLUDE_DIRS}")
set_target_properties(XVMC PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XVMC_LIBRARY_DIRS}")
set_target_properties(XVMC PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XVMC_LIB_LIBRARIES}")
set_target_properties(XVMC PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XVMC_CFLAGS_OTHER}")
