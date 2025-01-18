
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON2 REQUIRED python2)

add_library(PYTHON2 INTERFACE IMPORTED)
set_target_properties(PYTHON2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON2_INCLUDE_DIRS}")
set_target_properties(PYTHON2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON2_LIBRARY_DIRS}")
set_target_properties(PYTHON2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON2_LIB_LIBRARIES}")
set_target_properties(PYTHON2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON2_CFLAGS_OTHER}")
