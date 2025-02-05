
find_package(PkgConfig REQUIRED)

pkg_check_modules(ISO_CODES REQUIRED iso-codes)

add_library(iso_codes::iso_codes INTERFACE IMPORTED)
set_target_properties(iso_codes::iso_codes PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ISO_CODES_INCLUDE_DIRS}")
set_target_properties(iso_codes::iso_codes PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ISO_CODES_LIBRARY_DIRS}")
set_target_properties(iso_codes::iso_codes PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ISO_CODES_LIBRARIES}")
set_target_properties(iso_codes::iso_codes PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ISO_CODES_CFLAGS_OTHER}")
