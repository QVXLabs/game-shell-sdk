
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XBITMAPS REQUIRED xbitmaps)

add_library(XBITMAPS INTERFACE IMPORTED)
set_target_properties(XBITMAPS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XBITMAPS_INCLUDE_DIRS}")
set_target_properties(XBITMAPS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XBITMAPS_LIBRARY_DIRS}")
set_target_properties(XBITMAPS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XBITMAPS_LIB_LIBRARIES}")
set_target_properties(XBITMAPS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XBITMAPS_CFLAGS_OTHER}")
