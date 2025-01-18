
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPULSE REQUIRED libpulse)

add_library(LIBPULSE INTERFACE IMPORTED)
set_target_properties(LIBPULSE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPULSE_INCLUDE_DIRS}")
set_target_properties(LIBPULSE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPULSE_LIBRARY_DIRS}")
set_target_properties(LIBPULSE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPULSE_LIB_LIBRARIES}")
set_target_properties(LIBPULSE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPULSE_CFLAGS_OTHER}")
