
find_package(PkgConfig REQUIRED)

pkg_check_modules(VORBISFILE REQUIRED vorbisfile)

add_library(vorbisfile::vorbisfile INTERFACE IMPORTED)
set_target_properties(vorbisfile::vorbisfile PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VORBISFILE_INCLUDE_DIRS}")
set_target_properties(vorbisfile::vorbisfile PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VORBISFILE_LIBRARY_DIRS}")
set_target_properties(vorbisfile::vorbisfile PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VORBISFILE_LIB_LIBRARIES}")
set_target_properties(vorbisfile::vorbisfile PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VORBISFILE_CFLAGS_OTHER}")
