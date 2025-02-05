
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_I18N REQUIRED icu-i18n)

add_library(icu_i18n::icu_i18n INTERFACE IMPORTED)
set_target_properties(icu_i18n::icu_i18n PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_I18N_INCLUDE_DIRS}")
set_target_properties(icu_i18n::icu_i18n PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_I18N_LIBRARY_DIRS}")
set_target_properties(icu_i18n::icu_i18n PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_I18N_LIBRARIES}")
set_target_properties(icu_i18n::icu_i18n PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_I18N_CFLAGS_OTHER}")
