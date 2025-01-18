
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(HARFBUZZ REQUIRED harfbuzz)

add_library(HARFBUZZ INTERFACE IMPORTED)
set_target_properties(HARFBUZZ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${HARFBUZZ_INCLUDE_DIRS}")
set_target_properties(HARFBUZZ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${HARFBUZZ_LIBRARY_DIRS}")
set_target_properties(HARFBUZZ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${HARFBUZZ_LIB_LIBRARIES}")
set_target_properties(HARFBUZZ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${HARFBUZZ_CFLAGS_OTHER}")
