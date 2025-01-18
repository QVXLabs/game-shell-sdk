
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBZSTD REQUIRED libzstd)

add_library(LIBZSTD INTERFACE IMPORTED)
set_target_properties(LIBZSTD PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBZSTD_INCLUDE_DIRS}")
set_target_properties(LIBZSTD PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBZSTD_LIBRARY_DIRS}")
set_target_properties(LIBZSTD PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBZSTD_LIB_LIBRARIES}")
set_target_properties(LIBZSTD PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBZSTD_CFLAGS_OTHER}")
