
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(ALSA REQUIRED alsa)

add_library(ALSA INTERFACE IMPORTED)
set_target_properties(ALSA PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ALSA_INCLUDE_DIRS}")
set_target_properties(ALSA PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ALSA_LIBRARY_DIRS}")
set_target_properties(ALSA PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ALSA_LIB_LIBRARIES}")
set_target_properties(ALSA PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ALSA_CFLAGS_OTHER}")
