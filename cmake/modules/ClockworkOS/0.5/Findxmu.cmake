
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XMU REQUIRED xmu)

add_library(XMU INTERFACE IMPORTED)
set_target_properties(XMU PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XMU_INCLUDE_DIRS}")
set_target_properties(XMU PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XMU_LIBRARY_DIRS}")
set_target_properties(XMU PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XMU_LIB_LIBRARIES}")
set_target_properties(XMU PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XMU_CFLAGS_OTHER}")
