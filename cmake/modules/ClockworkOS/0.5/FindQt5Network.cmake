
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5NETWORK REQUIRED Qt5Network)

add_library(QT5NETWORK INTERFACE IMPORTED)
set_target_properties(QT5NETWORK PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5NETWORK_INCLUDE_DIRS}")
set_target_properties(QT5NETWORK PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5NETWORK_LIBRARY_DIRS}")
set_target_properties(QT5NETWORK PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5NETWORK_LIB_LIBRARIES}")
set_target_properties(QT5NETWORK PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5NETWORK_CFLAGS_OTHER}")
