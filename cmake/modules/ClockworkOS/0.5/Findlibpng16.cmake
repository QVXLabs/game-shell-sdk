
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPNG16 REQUIRED libpng16)

add_library(LIBPNG16 INTERFACE IMPORTED)
set_target_properties(LIBPNG16 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPNG16_INCLUDE_DIRS}")
set_target_properties(LIBPNG16 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPNG16_LIBRARY_DIRS}")
set_target_properties(LIBPNG16 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPNG16_LIB_LIBRARIES}")
set_target_properties(LIBPNG16 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPNG16_CFLAGS_OTHER}")
