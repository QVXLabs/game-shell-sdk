
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_LE REQUIRED icu-le)

add_library(ICU_LE INTERFACE IMPORTED)
set_target_properties(ICU_LE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_LE_INCLUDE_DIRS}")
set_target_properties(ICU_LE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_LE_LIBRARY_DIRS}")
set_target_properties(ICU_LE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_LE_LIB_LIBRARIES}")
set_target_properties(ICU_LE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_LE_CFLAGS_OTHER}")
