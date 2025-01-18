
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(DMXPROTO REQUIRED dmxproto)

add_library(DMXPROTO INTERFACE IMPORTED)
set_target_properties(DMXPROTO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DMXPROTO_INCLUDE_DIRS}")
set_target_properties(DMXPROTO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DMXPROTO_LIBRARY_DIRS}")
set_target_properties(DMXPROTO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DMXPROTO_LIB_LIBRARIES}")
set_target_properties(DMXPROTO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DMXPROTO_CFLAGS_OTHER}")
