
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON_3.5M REQUIRED python-3.5m)

add_library(python_3.5m::python_3.5m INTERFACE IMPORTED)
set_target_properties(python_3.5m::python_3.5m PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON_3.5M_INCLUDE_DIRS}")
set_target_properties(python_3.5m::python_3.5m PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON_3.5M_LIBRARY_DIRS}")
set_target_properties(python_3.5m::python_3.5m PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON_3.5M_LIB_LIBRARIES}")
set_target_properties(python_3.5m::python_3.5m PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON_3.5M_CFLAGS_OTHER}")
