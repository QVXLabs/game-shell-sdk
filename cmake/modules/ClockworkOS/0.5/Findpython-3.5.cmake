
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON_3.5 REQUIRED python-3.5)

add_library(PYTHON_3.5 INTERFACE IMPORTED)
set_target_properties(PYTHON_3.5 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON_3.5_INCLUDE_DIRS}")
set_target_properties(PYTHON_3.5 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON_3.5_LIBRARY_DIRS}")
set_target_properties(PYTHON_3.5 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON_3.5_LIB_LIBRARIES}")
set_target_properties(PYTHON_3.5 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON_3.5_CFLAGS_OTHER}")
