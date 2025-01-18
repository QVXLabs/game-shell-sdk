
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5DBUS REQUIRED Qt5DBus)

add_library(QT5DBUS INTERFACE IMPORTED)
set_target_properties(QT5DBUS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5DBUS_INCLUDE_DIRS}")
set_target_properties(QT5DBUS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5DBUS_LIBRARY_DIRS}")
set_target_properties(QT5DBUS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5DBUS_LIB_LIBRARIES}")
set_target_properties(QT5DBUS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5DBUS_CFLAGS_OTHER}")
