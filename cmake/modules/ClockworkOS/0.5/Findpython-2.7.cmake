
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON_2.7 REQUIRED python-2.7)

add_library(python_2.7::python_2.7 INTERFACE IMPORTED)
set_target_properties(python_2.7::python_2.7 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON_2.7_INCLUDE_DIRS}")
set_target_properties(python_2.7::python_2.7 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON_2.7_LIBRARY_DIRS}")
set_target_properties(python_2.7::python_2.7 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON_2.7_LIB_LIBRARIES}")
set_target_properties(python_2.7::python_2.7 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON_2.7_CFLAGS_OTHER}")
