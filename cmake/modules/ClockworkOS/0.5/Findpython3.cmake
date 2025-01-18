
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PYTHON3 REQUIRED python3)

add_library(PYTHON3 INTERFACE IMPORTED)
set_target_properties(PYTHON3 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PYTHON3_INCLUDE_DIRS}")
set_target_properties(PYTHON3 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PYTHON3_LIBRARY_DIRS}")
set_target_properties(PYTHON3 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PYTHON3_LIB_LIBRARIES}")
set_target_properties(PYTHON3 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PYTHON3_CFLAGS_OTHER}")
