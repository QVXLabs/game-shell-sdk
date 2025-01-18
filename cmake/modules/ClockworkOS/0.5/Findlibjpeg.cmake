
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBJPEG REQUIRED libjpeg)

add_library(LIBJPEG INTERFACE IMPORTED)
set_target_properties(LIBJPEG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBJPEG_INCLUDE_DIRS}")
set_target_properties(LIBJPEG PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBJPEG_LIBRARY_DIRS}")
set_target_properties(LIBJPEG PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBJPEG_LIB_LIBRARIES}")
set_target_properties(LIBJPEG PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBJPEG_CFLAGS_OTHER}")
