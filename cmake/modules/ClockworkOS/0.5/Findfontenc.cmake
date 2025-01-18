
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(FONTENC REQUIRED fontenc)

add_library(FONTENC INTERFACE IMPORTED)
set_target_properties(FONTENC PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FONTENC_INCLUDE_DIRS}")
set_target_properties(FONTENC PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FONTENC_LIBRARY_DIRS}")
set_target_properties(FONTENC PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FONTENC_LIB_LIBRARIES}")
set_target_properties(FONTENC PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FONTENC_CFLAGS_OTHER}")
