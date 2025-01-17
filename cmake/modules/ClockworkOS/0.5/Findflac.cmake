
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(FLAC REQUIRED flac)

add_library(FLAC INTERFACE IMPORTED)
set_target_properties(FLAC PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FLAC_INCLUDE_DIRS}")
set_target_properties(FLAC PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FLAC_LIBRARY_DIRS}")
set_target_properties(FLAC PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FLAC_LIB_LIBRARIES}")
set_target_properties(FLAC PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FLAC_CFLAGS_OTHER}")
