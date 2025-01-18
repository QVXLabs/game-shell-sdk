
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM REQUIRED libdrm)

add_library(LIBDRM INTERFACE IMPORTED)
set_target_properties(LIBDRM PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_INCLUDE_DIRS}")
set_target_properties(LIBDRM PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_LIBRARY_DIRS}")
set_target_properties(LIBDRM PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_LIB_LIBRARIES}")
set_target_properties(LIBDRM PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_CFLAGS_OTHER}")
