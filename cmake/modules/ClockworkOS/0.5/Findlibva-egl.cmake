
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_EGL REQUIRED libva-egl)

add_library(libva_egl::libva_egl INTERFACE IMPORTED)
set_target_properties(libva_egl::libva_egl PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_EGL_INCLUDE_DIRS}")
set_target_properties(libva_egl::libva_egl PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_EGL_LIBRARY_DIRS}")
set_target_properties(libva_egl::libva_egl PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_EGL_LIBRARIES}")
set_target_properties(libva_egl::libva_egl PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_EGL_CFLAGS_OTHER}")
