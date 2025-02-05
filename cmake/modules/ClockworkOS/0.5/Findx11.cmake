
find_package(PkgConfig REQUIRED)

pkg_check_modules(X11 REQUIRED x11)

add_library(x11::x11 INTERFACE IMPORTED)
set_target_properties(x11::x11 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${X11_INCLUDE_DIRS}")
set_target_properties(x11::x11 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${X11_LIBRARY_DIRS}")
set_target_properties(x11::x11 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${X11_LIBRARIES}")
set_target_properties(x11::x11 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${X11_CFLAGS_OTHER}")
