
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_UC REQUIRED icu-uc)

add_library(icu_uc::icu_uc INTERFACE IMPORTED)
set_target_properties(icu_uc::icu_uc PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_UC_INCLUDE_DIRS}")
set_target_properties(icu_uc::icu_uc PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_UC_LIBRARY_DIRS}")
set_target_properties(icu_uc::icu_uc PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_UC_LIB_LIBRARIES}")
set_target_properties(icu_uc::icu_uc PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_UC_CFLAGS_OTHER}")
