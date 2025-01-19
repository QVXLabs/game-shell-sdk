
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_LE REQUIRED icu-le)

add_library(icu_le::icu_le INTERFACE IMPORTED)
set_target_properties(icu_le::icu_le PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_LE_INCLUDE_DIRS}")
set_target_properties(icu_le::icu_le PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_LE_LIBRARY_DIRS}")
set_target_properties(icu_le::icu_le PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_LE_LIB_LIBRARIES}")
set_target_properties(icu_le::icu_le PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_LE_CFLAGS_OTHER}")
