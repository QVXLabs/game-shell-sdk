
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBWEBP REQUIRED libwebp)

add_library(LIBWEBP INTERFACE IMPORTED)
set_target_properties(LIBWEBP PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBWEBP_INCLUDE_DIRS}")
set_target_properties(LIBWEBP PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBWEBP_LIBRARY_DIRS}")
set_target_properties(LIBWEBP PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBWEBP_LIB_LIBRARIES}")
set_target_properties(LIBWEBP PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBWEBP_CFLAGS_OTHER}")
