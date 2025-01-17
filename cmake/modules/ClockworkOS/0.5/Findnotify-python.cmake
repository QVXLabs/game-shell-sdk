
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(NOTIFY_PYTHON REQUIRED notify-python)

add_library(NOTIFY_PYTHON INTERFACE IMPORTED)
set_target_properties(NOTIFY_PYTHON PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NOTIFY_PYTHON_INCLUDE_DIRS}")
set_target_properties(NOTIFY_PYTHON PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NOTIFY_PYTHON_LIBRARY_DIRS}")
set_target_properties(NOTIFY_PYTHON PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NOTIFY_PYTHON_LIB_LIBRARIES}")
set_target_properties(NOTIFY_PYTHON PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NOTIFY_PYTHON_CFLAGS_OTHER}")
