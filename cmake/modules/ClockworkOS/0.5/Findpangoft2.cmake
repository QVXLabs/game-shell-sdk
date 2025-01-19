
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANGOFT2 REQUIRED pangoft2)

add_library(pangoft2::pangoft2 INTERFACE IMPORTED)
set_target_properties(pangoft2::pangoft2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANGOFT2_INCLUDE_DIRS}")
set_target_properties(pangoft2::pangoft2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANGOFT2_LIBRARY_DIRS}")
set_target_properties(pangoft2::pangoft2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANGOFT2_LIB_LIBRARIES}")
set_target_properties(pangoft2::pangoft2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANGOFT2_CFLAGS_OTHER}")
