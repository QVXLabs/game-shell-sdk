
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(HARFBUZZ_ICU REQUIRED harfbuzz-icu)

add_library(HARFBUZZ_ICU INTERFACE IMPORTED)
set_target_properties(HARFBUZZ_ICU PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${HARFBUZZ_ICU_INCLUDE_DIRS}")
set_target_properties(HARFBUZZ_ICU PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${HARFBUZZ_ICU_LIBRARY_DIRS}")
set_target_properties(HARFBUZZ_ICU PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${HARFBUZZ_ICU_LIB_LIBRARIES}")
set_target_properties(HARFBUZZ_ICU PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${HARFBUZZ_ICU_CFLAGS_OTHER}")
