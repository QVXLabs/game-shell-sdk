
find_package(PkgConfig REQUIRED)

pkg_check_modules(XFONT2 REQUIRED xfont2)

add_library(xfont2::xfont2 INTERFACE IMPORTED)
set_target_properties(xfont2::xfont2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XFONT2_INCLUDE_DIRS}")
set_target_properties(xfont2::xfont2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XFONT2_LIBRARY_DIRS}")
set_target_properties(xfont2::xfont2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XFONT2_LIBRARIES}")
set_target_properties(xfont2::xfont2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XFONT2_CFLAGS_OTHER}")
