
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLESV1_CM REQUIRED glesv1_cm)

add_library(glesv1_cm::glesv1_cm INTERFACE IMPORTED)
set_target_properties(glesv1_cm::glesv1_cm PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLESV1_CM_INCLUDE_DIRS}")
set_target_properties(glesv1_cm::glesv1_cm PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLESV1_CM_LIBRARY_DIRS}")
set_target_properties(glesv1_cm::glesv1_cm PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLESV1_CM_LIB_LIBRARIES}")
set_target_properties(glesv1_cm::glesv1_cm PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLESV1_CM_CFLAGS_OTHER}")
