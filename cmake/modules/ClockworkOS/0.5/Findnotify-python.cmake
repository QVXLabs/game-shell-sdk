
find_package(PkgConfig REQUIRED)

pkg_check_modules(NOTIFY_PYTHON REQUIRED notify-python)

add_library(notify_python::notify_python INTERFACE IMPORTED)
set_target_properties(notify_python::notify_python PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NOTIFY_PYTHON_INCLUDE_DIRS}")
set_target_properties(notify_python::notify_python PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NOTIFY_PYTHON_LIBRARY_DIRS}")
set_target_properties(notify_python::notify_python PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NOTIFY_PYTHON_LIB_LIBRARIES}")
set_target_properties(notify_python::notify_python PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NOTIFY_PYTHON_CFLAGS_OTHER}")
