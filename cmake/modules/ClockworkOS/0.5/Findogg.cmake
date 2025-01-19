
find_package(PkgConfig REQUIRED)

pkg_check_modules(OGG REQUIRED ogg)

add_library(ogg::ogg INTERFACE IMPORTED)
set_target_properties(ogg::ogg PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${OGG_INCLUDE_DIRS}")
set_target_properties(ogg::ogg PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${OGG_LIBRARY_DIRS}")
set_target_properties(ogg::ogg PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${OGG_LIB_LIBRARIES}")
set_target_properties(ogg::ogg PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${OGG_CFLAGS_OTHER}")
