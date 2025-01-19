
find_package(PkgConfig REQUIRED)

pkg_check_modules(BIGREQSPROTO REQUIRED bigreqsproto)

add_library(bigreqsproto::bigreqsproto INTERFACE IMPORTED)
set_target_properties(bigreqsproto::bigreqsproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${BIGREQSPROTO_INCLUDE_DIRS}")
set_target_properties(bigreqsproto::bigreqsproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${BIGREQSPROTO_LIBRARY_DIRS}")
set_target_properties(bigreqsproto::bigreqsproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${BIGREQSPROTO_LIB_LIBRARIES}")
set_target_properties(bigreqsproto::bigreqsproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${BIGREQSPROTO_CFLAGS_OTHER}")
