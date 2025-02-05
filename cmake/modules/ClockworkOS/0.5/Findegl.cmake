
find_package(PkgConfig REQUIRED)

pkg_check_modules(EGL REQUIRED egl)

add_library(egl::egl INTERFACE IMPORTED)
set_target_properties(egl::egl PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${EGL_INCLUDE_DIRS}")
set_target_properties(egl::egl PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${EGL_LIBRARY_DIRS}")
set_target_properties(egl::egl PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${EGL_LIBRARIES}")
set_target_properties(egl::egl PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${EGL_CFLAGS_OTHER}")
