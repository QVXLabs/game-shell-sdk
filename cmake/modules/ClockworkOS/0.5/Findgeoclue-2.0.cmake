
find_package(PkgConfig REQUIRED)

pkg_check_modules(GEOCLUE_2.0 REQUIRED geoclue-2.0)

add_library(geoclue_2.0::geoclue_2.0 INTERFACE IMPORTED)
set_target_properties(geoclue_2.0::geoclue_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GEOCLUE_2.0_INCLUDE_DIRS}")
set_target_properties(geoclue_2.0::geoclue_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GEOCLUE_2.0_LIBRARY_DIRS}")
set_target_properties(geoclue_2.0::geoclue_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GEOCLUE_2.0_LIBRARIES}")
set_target_properties(geoclue_2.0::geoclue_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GEOCLUE_2.0_CFLAGS_OTHER}")
