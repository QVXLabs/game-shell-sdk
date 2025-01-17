
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA REQUIRED libva)

add_library(LIBVA INTERFACE IMPORTED)
set_target_properties(LIBVA PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_INCLUDE_DIRS}")
set_target_properties(LIBVA PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_LIBRARY_DIRS}")
set_target_properties(LIBVA PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_LIB_LIBRARIES}")
set_target_properties(LIBVA PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_CFLAGS_OTHER}")
