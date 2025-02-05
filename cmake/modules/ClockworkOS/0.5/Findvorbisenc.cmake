
find_package(PkgConfig REQUIRED)

pkg_check_modules(VORBISENC REQUIRED vorbisenc)

add_library(vorbisenc::vorbisenc INTERFACE IMPORTED)
set_target_properties(vorbisenc::vorbisenc PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VORBISENC_INCLUDE_DIRS}")
set_target_properties(vorbisenc::vorbisenc PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VORBISENC_LIBRARY_DIRS}")
set_target_properties(vorbisenc::vorbisenc PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VORBISENC_LIBRARIES}")
set_target_properties(vorbisenc::vorbisenc PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VORBISENC_CFLAGS_OTHER}")
