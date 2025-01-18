
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(FREETYPE2 REQUIRED freetype2)

add_library(FREETYPE2 INTERFACE IMPORTED)
set_target_properties(FREETYPE2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FREETYPE2_INCLUDE_DIRS}")
set_target_properties(FREETYPE2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FREETYPE2_LIBRARY_DIRS}")
set_target_properties(FREETYPE2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FREETYPE2_LIB_LIBRARIES}")
set_target_properties(FREETYPE2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FREETYPE2_CFLAGS_OTHER}")
