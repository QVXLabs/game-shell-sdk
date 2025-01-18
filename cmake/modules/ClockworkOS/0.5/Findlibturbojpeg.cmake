
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBTURBOJPEG REQUIRED libturbojpeg)

add_library(LIBTURBOJPEG INTERFACE IMPORTED)
set_target_properties(LIBTURBOJPEG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBTURBOJPEG_INCLUDE_DIRS}")
set_target_properties(LIBTURBOJPEG PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBTURBOJPEG_LIBRARY_DIRS}")
set_target_properties(LIBTURBOJPEG PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBTURBOJPEG_LIB_LIBRARIES}")
set_target_properties(LIBTURBOJPEG PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBTURBOJPEG_CFLAGS_OTHER}")
