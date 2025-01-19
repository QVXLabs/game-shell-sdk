
find_package(PkgConfig REQUIRED)

pkg_check_modules(FONTCONFIG REQUIRED fontconfig)

add_library(fontconfig::fontconfig INTERFACE IMPORTED)
set_target_properties(fontconfig::fontconfig PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FONTCONFIG_INCLUDE_DIRS}")
set_target_properties(fontconfig::fontconfig PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FONTCONFIG_LIBRARY_DIRS}")
set_target_properties(fontconfig::fontconfig PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FONTCONFIG_LIB_LIBRARIES}")
set_target_properties(fontconfig::fontconfig PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FONTCONFIG_CFLAGS_OTHER}")
