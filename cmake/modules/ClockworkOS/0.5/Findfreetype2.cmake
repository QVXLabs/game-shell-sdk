
find_package(PkgConfig REQUIRED)

pkg_check_modules(FREETYPE2 REQUIRED freetype2)

add_library(freetype2::freetype2 INTERFACE IMPORTED)
set_target_properties(freetype2::freetype2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FREETYPE2_INCLUDE_DIRS}")
set_target_properties(freetype2::freetype2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FREETYPE2_LIBRARY_DIRS}")
set_target_properties(freetype2::freetype2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FREETYPE2_LIBRARIES}")
set_target_properties(freetype2::freetype2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FREETYPE2_CFLAGS_OTHER}")
