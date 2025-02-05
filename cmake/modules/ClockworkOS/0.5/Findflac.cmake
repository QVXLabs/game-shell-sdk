
find_package(PkgConfig REQUIRED)

pkg_check_modules(FLAC REQUIRED flac)

add_library(flac::flac INTERFACE IMPORTED)
set_target_properties(flac::flac PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FLAC_INCLUDE_DIRS}")
set_target_properties(flac::flac PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FLAC_LIBRARY_DIRS}")
set_target_properties(flac::flac PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FLAC_LIBRARIES}")
set_target_properties(flac::flac PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FLAC_CFLAGS_OTHER}")
