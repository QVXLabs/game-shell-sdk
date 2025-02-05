
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_LX REQUIRED icu-lx)

add_library(icu_lx::icu_lx INTERFACE IMPORTED)
set_target_properties(icu_lx::icu_lx PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_LX_INCLUDE_DIRS}")
set_target_properties(icu_lx::icu_lx PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_LX_LIBRARY_DIRS}")
set_target_properties(icu_lx::icu_lx PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_LX_LIBRARIES}")
set_target_properties(icu_lx::icu_lx PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_LX_CFLAGS_OTHER}")
