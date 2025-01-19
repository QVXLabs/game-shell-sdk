
find_package(PkgConfig REQUIRED)

pkg_check_modules(ALSA REQUIRED alsa)

add_library(alsa::alsa INTERFACE IMPORTED)
set_target_properties(alsa::alsa PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ALSA_INCLUDE_DIRS}")
set_target_properties(alsa::alsa PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ALSA_LIBRARY_DIRS}")
set_target_properties(alsa::alsa PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ALSA_LIB_LIBRARIES}")
set_target_properties(alsa::alsa PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ALSA_CFLAGS_OTHER}")
