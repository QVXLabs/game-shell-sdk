
find_package(PkgConfig REQUIRED)

pkg_check_modules(VORBIS REQUIRED vorbis)

add_library(vorbis::vorbis INTERFACE IMPORTED)
set_target_properties(vorbis::vorbis PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VORBIS_INCLUDE_DIRS}")
set_target_properties(vorbis::vorbis PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VORBIS_LIBRARY_DIRS}")
set_target_properties(vorbis::vorbis PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VORBIS_LIB_LIBRARIES}")
set_target_properties(vorbis::vorbis PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VORBIS_CFLAGS_OTHER}")
