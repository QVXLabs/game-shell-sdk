
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPNG REQUIRED libpng)

add_library(LIBPNG INTERFACE IMPORTED)
set_target_properties(LIBPNG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPNG_INCLUDE_DIRS}")
set_target_properties(LIBPNG PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPNG_LIBRARY_DIRS}")
set_target_properties(LIBPNG PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPNG_LIB_LIBRARIES}")
set_target_properties(LIBPNG PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPNG_CFLAGS_OTHER}")
