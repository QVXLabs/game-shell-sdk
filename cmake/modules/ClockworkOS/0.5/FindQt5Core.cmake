
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5CORE REQUIRED Qt5Core)

add_library(QT5CORE INTERFACE IMPORTED)
set_target_properties(QT5CORE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5CORE_INCLUDE_DIRS}")
set_target_properties(QT5CORE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5CORE_LIBRARY_DIRS}")
set_target_properties(QT5CORE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5CORE_LIB_LIBRARIES}")
set_target_properties(QT5CORE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5CORE_CFLAGS_OTHER}")
