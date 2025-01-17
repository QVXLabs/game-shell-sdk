
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPULSE_SIMPLE REQUIRED libpulse-simple)

add_library(LIBPULSE_SIMPLE INTERFACE IMPORTED)
set_target_properties(LIBPULSE_SIMPLE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPULSE_SIMPLE_INCLUDE_DIRS}")
set_target_properties(LIBPULSE_SIMPLE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPULSE_SIMPLE_LIBRARY_DIRS}")
set_target_properties(LIBPULSE_SIMPLE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPULSE_SIMPLE_LIB_LIBRARIES}")
set_target_properties(LIBPULSE_SIMPLE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPULSE_SIMPLE_CFLAGS_OTHER}")
