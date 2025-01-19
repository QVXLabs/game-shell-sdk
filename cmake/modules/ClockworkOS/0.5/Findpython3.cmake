
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON3 REQUIRED python3)

add_library(python3::python3 INTERFACE IMPORTED)
set_target_properties(python3::python3 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON3_INCLUDE_DIRS}")
set_target_properties(python3::python3 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON3_LIBRARY_DIRS}")
set_target_properties(python3::python3 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON3_LIB_LIBRARIES}")
set_target_properties(python3::python3 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON3_CFLAGS_OTHER}")
