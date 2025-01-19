
find_package(PkgConfig REQUIRED)

pkg_check_modules(FONTENC REQUIRED fontenc)

add_library(fontenc::fontenc INTERFACE IMPORTED)
set_target_properties(fontenc::fontenc PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FONTENC_INCLUDE_DIRS}")
set_target_properties(fontenc::fontenc PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FONTENC_LIBRARY_DIRS}")
set_target_properties(fontenc::fontenc PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FONTENC_LIB_LIBRARIES}")
set_target_properties(fontenc::fontenc PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FONTENC_CFLAGS_OTHER}")
