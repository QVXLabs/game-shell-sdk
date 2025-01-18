
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(VORBISENC REQUIRED vorbisenc)

add_library(VORBISENC INTERFACE IMPORTED)
set_target_properties(VORBISENC PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VORBISENC_INCLUDE_DIRS}")
set_target_properties(VORBISENC PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VORBISENC_LIBRARY_DIRS}")
set_target_properties(VORBISENC PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VORBISENC_LIB_LIBRARIES}")
set_target_properties(VORBISENC PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VORBISENC_CFLAGS_OTHER}")
