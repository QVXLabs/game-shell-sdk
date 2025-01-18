
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_DRM REQUIRED libva-drm)

add_library(LIBVA_DRM INTERFACE IMPORTED)
set_target_properties(LIBVA_DRM PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_DRM_INCLUDE_DIRS}")
set_target_properties(LIBVA_DRM PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_DRM_LIBRARY_DIRS}")
set_target_properties(LIBVA_DRM PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_DRM_LIB_LIBRARIES}")
set_target_properties(LIBVA_DRM PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_DRM_CFLAGS_OTHER}")
