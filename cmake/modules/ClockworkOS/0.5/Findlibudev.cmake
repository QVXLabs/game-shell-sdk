
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBUDEV REQUIRED libudev)

add_library(LIBUDEV INTERFACE IMPORTED)
set_target_properties(LIBUDEV PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBUDEV_INCLUDE_DIRS}")
set_target_properties(LIBUDEV PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBUDEV_LIBRARY_DIRS}")
set_target_properties(LIBUDEV PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBUDEV_LIB_LIBRARIES}")
set_target_properties(LIBUDEV PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBUDEV_CFLAGS_OTHER}")
