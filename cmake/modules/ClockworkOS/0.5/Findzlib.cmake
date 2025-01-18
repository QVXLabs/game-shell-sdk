
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(ZLIB REQUIRED zlib)

add_library(ZLIB INTERFACE IMPORTED)
set_target_properties(ZLIB PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ZLIB_INCLUDE_DIRS}")
set_target_properties(ZLIB PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ZLIB_LIBRARY_DIRS}")
set_target_properties(ZLIB PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ZLIB_LIB_LIBRARIES}")
set_target_properties(ZLIB PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ZLIB_CFLAGS_OTHER}")
