
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_UC REQUIRED icu-uc)

add_library(ICU_UC INTERFACE IMPORTED)
set_target_properties(ICU_UC PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_UC_INCLUDE_DIRS}")
set_target_properties(ICU_UC PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_UC_LIBRARY_DIRS}")
set_target_properties(ICU_UC PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_UC_LIB_LIBRARIES}")
set_target_properties(ICU_UC PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_UC_CFLAGS_OTHER}")
