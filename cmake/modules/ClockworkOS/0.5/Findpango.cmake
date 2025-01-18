
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANGO REQUIRED pango)

add_library(PANGO INTERFACE IMPORTED)
set_target_properties(PANGO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANGO_INCLUDE_DIRS}")
set_target_properties(PANGO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANGO_LIBRARY_DIRS}")
set_target_properties(PANGO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANGO_LIB_LIBRARIES}")
set_target_properties(PANGO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANGO_CFLAGS_OTHER}")
