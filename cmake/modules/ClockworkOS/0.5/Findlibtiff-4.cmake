
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBTIFF_4 REQUIRED libtiff-4)

add_library(LIBTIFF_4 INTERFACE IMPORTED)
set_target_properties(LIBTIFF_4 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBTIFF_4_INCLUDE_DIRS}")
set_target_properties(LIBTIFF_4 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBTIFF_4_LIBRARY_DIRS}")
set_target_properties(LIBTIFF_4 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBTIFF_4_LIB_LIBRARIES}")
set_target_properties(LIBTIFF_4 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBTIFF_4_CFLAGS_OTHER}")
