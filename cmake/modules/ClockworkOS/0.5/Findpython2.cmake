
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON2 REQUIRED python2)

add_library(python2::python2 INTERFACE IMPORTED)
set_target_properties(python2::python2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON2_INCLUDE_DIRS}")
set_target_properties(python2::python2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON2_LIBRARY_DIRS}")
set_target_properties(python2::python2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON2_LIB_LIBRARIES}")
set_target_properties(python2::python2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON2_CFLAGS_OTHER}")
