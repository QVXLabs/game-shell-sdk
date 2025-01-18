
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PORTAUDIO_2.0 REQUIRED portaudio-2.0)

add_library(PORTAUDIO_2.0 INTERFACE IMPORTED)
set_target_properties(PORTAUDIO_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PORTAUDIO_2.0_INCLUDE_DIRS}")
set_target_properties(PORTAUDIO_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PORTAUDIO_2.0_LIBRARY_DIRS}")
set_target_properties(PORTAUDIO_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PORTAUDIO_2.0_LIB_LIBRARIES}")
set_target_properties(PORTAUDIO_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PORTAUDIO_2.0_CFLAGS_OTHER}")
