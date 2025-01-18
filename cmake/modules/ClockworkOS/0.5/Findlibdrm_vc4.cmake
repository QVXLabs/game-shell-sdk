
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_VC4 REQUIRED libdrm_vc4)

add_library(LIBDRM_VC4 INTERFACE IMPORTED)
set_target_properties(LIBDRM_VC4 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_VC4_INCLUDE_DIRS}")
set_target_properties(LIBDRM_VC4 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_VC4_LIBRARY_DIRS}")
set_target_properties(LIBDRM_VC4 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_VC4_LIB_LIBRARIES}")
set_target_properties(LIBDRM_VC4 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_VC4_CFLAGS_OTHER}")
