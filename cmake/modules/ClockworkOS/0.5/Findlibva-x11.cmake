
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_X11 REQUIRED libva-x11)

add_library(libva_x11::libva_x11 INTERFACE IMPORTED)
set_target_properties(libva_x11::libva_x11 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_X11_INCLUDE_DIRS}")
set_target_properties(libva_x11::libva_x11 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_X11_LIBRARY_DIRS}")
set_target_properties(libva_x11::libva_x11 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_X11_LIB_LIBRARIES}")
set_target_properties(libva_x11::libva_x11 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_X11_CFLAGS_OTHER}")
