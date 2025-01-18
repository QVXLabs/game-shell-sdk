
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_GLX REQUIRED libva-glx)

add_library(LIBVA_GLX INTERFACE IMPORTED)
set_target_properties(LIBVA_GLX PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_GLX_INCLUDE_DIRS}")
set_target_properties(LIBVA_GLX PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_GLX_LIBRARY_DIRS}")
set_target_properties(LIBVA_GLX PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_GLX_LIB_LIBRARIES}")
set_target_properties(LIBVA_GLX PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_GLX_CFLAGS_OTHER}")
