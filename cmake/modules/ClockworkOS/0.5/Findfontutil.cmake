
find_package(PkgConfig REQUIRED)

pkg_check_modules(FONTUTIL REQUIRED fontutil)

add_library(fontutil::fontutil INTERFACE IMPORTED)
set_target_properties(fontutil::fontutil PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FONTUTIL_INCLUDE_DIRS}")
set_target_properties(fontutil::fontutil PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FONTUTIL_LIBRARY_DIRS}")
set_target_properties(fontutil::fontutil PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FONTUTIL_LIBRARIES}")
set_target_properties(fontutil::fontutil PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FONTUTIL_CFLAGS_OTHER}")
