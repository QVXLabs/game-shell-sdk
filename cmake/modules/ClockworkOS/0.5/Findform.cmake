
find_package(PkgConfig REQUIRED)

pkg_check_modules(FORM REQUIRED form)

add_library(form::form INTERFACE IMPORTED)
set_target_properties(form::form PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FORM_INCLUDE_DIRS}")
set_target_properties(form::form PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FORM_LIBRARY_DIRS}")
set_target_properties(form::form PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FORM_LIB_LIBRARIES}")
set_target_properties(form::form PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FORM_CFLAGS_OTHER}")
