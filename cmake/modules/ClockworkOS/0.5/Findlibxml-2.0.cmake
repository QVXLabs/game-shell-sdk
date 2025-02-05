
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBXML_2.0 REQUIRED libxml-2.0)

add_library(libxml_2.0::libxml_2.0 INTERFACE IMPORTED)
set_target_properties(libxml_2.0::libxml_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBXML_2.0_INCLUDE_DIRS}")
set_target_properties(libxml_2.0::libxml_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBXML_2.0_LIBRARY_DIRS}")
set_target_properties(libxml_2.0::libxml_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBXML_2.0_LIBRARIES}")
set_target_properties(libxml_2.0::libxml_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBXML_2.0_CFLAGS_OTHER}")
