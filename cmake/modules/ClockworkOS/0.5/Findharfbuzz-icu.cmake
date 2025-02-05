
find_package(PkgConfig REQUIRED)

pkg_check_modules(HARFBUZZ_ICU REQUIRED harfbuzz-icu)

add_library(harfbuzz_icu::harfbuzz_icu INTERFACE IMPORTED)
set_target_properties(harfbuzz_icu::harfbuzz_icu PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${HARFBUZZ_ICU_INCLUDE_DIRS}")
set_target_properties(harfbuzz_icu::harfbuzz_icu PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${HARFBUZZ_ICU_LIBRARY_DIRS}")
set_target_properties(harfbuzz_icu::harfbuzz_icu PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${HARFBUZZ_ICU_LIBRARIES}")
set_target_properties(harfbuzz_icu::harfbuzz_icu PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${HARFBUZZ_ICU_CFLAGS_OTHER}")
