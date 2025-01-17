
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON REQUIRED python)

add_library(PYTHON INTERFACE IMPORTED)
set_target_properties(PYTHON PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON_INCLUDE_DIRS}")
set_target_properties(PYTHON PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON_LIBRARY_DIRS}")
set_target_properties(PYTHON PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON_LIB_LIBRARIES}")
set_target_properties(PYTHON PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON_CFLAGS_OTHER}")
