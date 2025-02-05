
find_package(PkgConfig REQUIRED)

pkg_check_modules(XBITMAPS REQUIRED xbitmaps)

add_library(xbitmaps::xbitmaps INTERFACE IMPORTED)
set_target_properties(xbitmaps::xbitmaps PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XBITMAPS_INCLUDE_DIRS}")
set_target_properties(xbitmaps::xbitmaps PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XBITMAPS_LIBRARY_DIRS}")
set_target_properties(xbitmaps::xbitmaps PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XBITMAPS_LIBRARIES}")
set_target_properties(xbitmaps::xbitmaps PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XBITMAPS_CFLAGS_OTHER}")
