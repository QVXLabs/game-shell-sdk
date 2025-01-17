
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBWEBPMUX REQUIRED libwebpmux)

add_library(LIBWEBPMUX INTERFACE IMPORTED)
set_target_properties(LIBWEBPMUX PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBWEBPMUX_INCLUDE_DIRS}")
set_target_properties(LIBWEBPMUX PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBWEBPMUX_LIBRARY_DIRS}")
set_target_properties(LIBWEBPMUX PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBWEBPMUX_LIB_LIBRARIES}")
set_target_properties(LIBWEBPMUX PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBWEBPMUX_CFLAGS_OTHER}")
