
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANGO REQUIRED pango)

add_library(pango::pango INTERFACE IMPORTED)
set_target_properties(pango::pango PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANGO_INCLUDE_DIRS}")
set_target_properties(pango::pango PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANGO_LIBRARY_DIRS}")
set_target_properties(pango::pango PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANGO_LIBRARIES}")
set_target_properties(pango::pango PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANGO_CFLAGS_OTHER}")
