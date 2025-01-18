
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_LX REQUIRED icu-lx)

add_library(ICU_LX INTERFACE IMPORTED)
set_target_properties(ICU_LX PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_LX_INCLUDE_DIRS}")
set_target_properties(ICU_LX PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_LX_LIBRARY_DIRS}")
set_target_properties(ICU_LX PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_LX_LIB_LIBRARIES}")
set_target_properties(ICU_LX PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_LX_CFLAGS_OTHER}")
