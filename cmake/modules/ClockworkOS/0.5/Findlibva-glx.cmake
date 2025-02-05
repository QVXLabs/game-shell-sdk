
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_GLX REQUIRED libva-glx)

add_library(libva_glx::libva_glx INTERFACE IMPORTED)
set_target_properties(libva_glx::libva_glx PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_GLX_INCLUDE_DIRS}")
set_target_properties(libva_glx::libva_glx PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_GLX_LIBRARY_DIRS}")
set_target_properties(libva_glx::libva_glx PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_GLX_LIBRARIES}")
set_target_properties(libva_glx::libva_glx PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_GLX_CFLAGS_OTHER}")
