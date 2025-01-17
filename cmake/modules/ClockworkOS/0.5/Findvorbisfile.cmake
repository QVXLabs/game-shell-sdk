
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(VORBISFILE REQUIRED vorbisfile)

add_library(VORBISFILE INTERFACE IMPORTED)
set_target_properties(VORBISFILE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VORBISFILE_INCLUDE_DIRS}")
set_target_properties(VORBISFILE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VORBISFILE_LIBRARY_DIRS}")
set_target_properties(VORBISFILE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VORBISFILE_LIB_LIBRARIES}")
set_target_properties(VORBISFILE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VORBISFILE_CFLAGS_OTHER}")
