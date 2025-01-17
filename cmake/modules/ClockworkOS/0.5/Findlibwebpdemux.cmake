
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBWEBPDEMUX REQUIRED libwebpdemux)

add_library(LIBWEBPDEMUX INTERFACE IMPORTED)
set_target_properties(LIBWEBPDEMUX PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBWEBPDEMUX_INCLUDE_DIRS}")
set_target_properties(LIBWEBPDEMUX PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBWEBPDEMUX_LIBRARY_DIRS}")
set_target_properties(LIBWEBPDEMUX PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBWEBPDEMUX_LIB_LIBRARIES}")
set_target_properties(LIBWEBPDEMUX PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBWEBPDEMUX_CFLAGS_OTHER}")
