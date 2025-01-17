
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON_3.5M REQUIRED python-3.5m)

add_library(PYTHON_3.5M INTERFACE IMPORTED)
set_target_properties(PYTHON_3.5M PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON_3.5M_INCLUDE_DIRS}")
set_target_properties(PYTHON_3.5M PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON_3.5M_LIBRARY_DIRS}")
set_target_properties(PYTHON_3.5M PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON_3.5M_LIB_LIBRARIES}")
set_target_properties(PYTHON_3.5M PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON_3.5M_CFLAGS_OTHER}")
