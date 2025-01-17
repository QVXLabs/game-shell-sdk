
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_EGL REQUIRED libva-egl)

add_library(LIBVA_EGL INTERFACE IMPORTED)
set_target_properties(LIBVA_EGL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_EGL_INCLUDE_DIRS}")
set_target_properties(LIBVA_EGL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_EGL_LIBRARY_DIRS}")
set_target_properties(LIBVA_EGL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_EGL_LIB_LIBRARIES}")
set_target_properties(LIBVA_EGL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_EGL_CFLAGS_OTHER}")
