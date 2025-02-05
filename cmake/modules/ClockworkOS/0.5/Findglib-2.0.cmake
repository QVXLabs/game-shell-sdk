
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLIB_2.0 REQUIRED glib-2.0)

add_library(glib_2.0::glib_2.0 INTERFACE IMPORTED)
set_target_properties(glib_2.0::glib_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLIB_2.0_INCLUDE_DIRS}")
set_target_properties(glib_2.0::glib_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLIB_2.0_LIBRARY_DIRS}")
set_target_properties(glib_2.0::glib_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLIB_2.0_LIBRARIES}")
set_target_properties(glib_2.0::glib_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLIB_2.0_CFLAGS_OTHER}")
