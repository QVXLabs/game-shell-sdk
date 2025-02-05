
find_package(PkgConfig REQUIRED)

pkg_check_modules(XFT REQUIRED xft)

add_library(xft::xft INTERFACE IMPORTED)
set_target_properties(xft::xft PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XFT_INCLUDE_DIRS}")
set_target_properties(xft::xft PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XFT_LIBRARY_DIRS}")
set_target_properties(xft::xft PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XFT_LIBRARIES}")
set_target_properties(xft::xft PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XFT_CFLAGS_OTHER}")
