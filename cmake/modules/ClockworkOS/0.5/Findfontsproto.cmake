
find_package(PkgConfig REQUIRED)

pkg_check_modules(FONTSPROTO REQUIRED fontsproto)

add_library(fontsproto::fontsproto INTERFACE IMPORTED)
set_target_properties(fontsproto::fontsproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FONTSPROTO_INCLUDE_DIRS}")
set_target_properties(fontsproto::fontsproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FONTSPROTO_LIBRARY_DIRS}")
set_target_properties(fontsproto::fontsproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FONTSPROTO_LIB_LIBRARIES}")
set_target_properties(fontsproto::fontsproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FONTSPROTO_CFLAGS_OTHER}")
