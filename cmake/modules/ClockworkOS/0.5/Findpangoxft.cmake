
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANGOXFT REQUIRED pangoxft)

add_library(PANGOXFT INTERFACE IMPORTED)
set_target_properties(PANGOXFT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANGOXFT_INCLUDE_DIRS}")
set_target_properties(PANGOXFT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANGOXFT_LIBRARY_DIRS}")
set_target_properties(PANGOXFT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANGOXFT_LIB_LIBRARIES}")
set_target_properties(PANGOXFT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANGOXFT_CFLAGS_OTHER}")
