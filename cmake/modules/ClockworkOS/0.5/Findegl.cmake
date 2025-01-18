
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(EGL REQUIRED egl)

add_library(EGL INTERFACE IMPORTED)
set_target_properties(EGL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${EGL_INCLUDE_DIRS}")
set_target_properties(EGL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${EGL_LIBRARY_DIRS}")
set_target_properties(EGL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${EGL_LIB_LIBRARIES}")
set_target_properties(EGL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${EGL_CFLAGS_OTHER}")
