
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_NOUVEAU REQUIRED libdrm_nouveau)

add_library(LIBDRM_NOUVEAU INTERFACE IMPORTED)
set_target_properties(LIBDRM_NOUVEAU PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_NOUVEAU_INCLUDE_DIRS}")
set_target_properties(LIBDRM_NOUVEAU PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_NOUVEAU_LIBRARY_DIRS}")
set_target_properties(LIBDRM_NOUVEAU PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_NOUVEAU_LIB_LIBRARIES}")
set_target_properties(LIBDRM_NOUVEAU PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_NOUVEAU_CFLAGS_OTHER}")
