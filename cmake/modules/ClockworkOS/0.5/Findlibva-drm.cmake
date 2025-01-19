
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_DRM REQUIRED libva-drm)

add_library(libva_drm::libva_drm INTERFACE IMPORTED)
set_target_properties(libva_drm::libva_drm PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_DRM_INCLUDE_DIRS}")
set_target_properties(libva_drm::libva_drm PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_DRM_LIBRARY_DIRS}")
set_target_properties(libva_drm::libva_drm PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_DRM_LIB_LIBRARIES}")
set_target_properties(libva_drm::libva_drm PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_DRM_CFLAGS_OTHER}")
