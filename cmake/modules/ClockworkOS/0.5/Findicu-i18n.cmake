
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_I18N REQUIRED icu-i18n)

add_library(ICU_I18N INTERFACE IMPORTED)
set_target_properties(ICU_I18N PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_I18N_INCLUDE_DIRS}")
set_target_properties(ICU_I18N PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_I18N_LIBRARY_DIRS}")
set_target_properties(ICU_I18N PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_I18N_LIB_LIBRARIES}")
set_target_properties(ICU_I18N PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_I18N_CFLAGS_OTHER}")
