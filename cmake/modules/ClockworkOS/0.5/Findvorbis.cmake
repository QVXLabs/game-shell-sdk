
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(VORBIS REQUIRED vorbis)

add_library(VORBIS INTERFACE IMPORTED)
set_target_properties(VORBIS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VORBIS_INCLUDE_DIRS}")
set_target_properties(VORBIS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VORBIS_LIBRARY_DIRS}")
set_target_properties(VORBIS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VORBIS_LIB_LIBRARIES}")
set_target_properties(VORBIS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VORBIS_CFLAGS_OTHER}")
