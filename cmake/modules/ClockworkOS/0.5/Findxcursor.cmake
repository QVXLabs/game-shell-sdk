
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCURSOR REQUIRED xcursor)

add_library(xcursor::xcursor INTERFACE IMPORTED)
set_target_properties(xcursor::xcursor PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCURSOR_INCLUDE_DIRS}")
set_target_properties(xcursor::xcursor PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCURSOR_LIBRARY_DIRS}")
set_target_properties(xcursor::xcursor PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCURSOR_LIB_LIBRARIES}")
set_target_properties(xcursor::xcursor PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCURSOR_CFLAGS_OTHER}")
