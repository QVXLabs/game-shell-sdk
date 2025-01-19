
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON REQUIRED python)

add_library(python::python INTERFACE IMPORTED)
set_target_properties(python::python PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON_INCLUDE_DIRS}")
set_target_properties(python::python PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON_LIBRARY_DIRS}")
set_target_properties(python::python PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON_LIB_LIBRARIES}")
set_target_properties(python::python PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON_CFLAGS_OTHER}")
