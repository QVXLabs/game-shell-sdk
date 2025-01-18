
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XAU REQUIRED xau)

add_library(XAU INTERFACE IMPORTED)
set_target_properties(XAU PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XAU_INCLUDE_DIRS}")
set_target_properties(XAU PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XAU_LIBRARY_DIRS}")
set_target_properties(XAU PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XAU_LIB_LIBRARIES}")
set_target_properties(XAU PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XAU_CFLAGS_OTHER}")
