
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5DBUS REQUIRED Qt5DBus)

add_library(Qt5DBus::Qt5DBus INTERFACE IMPORTED)
set_target_properties(Qt5DBus::Qt5DBus PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5DBUS_INCLUDE_DIRS}")
set_target_properties(Qt5DBus::Qt5DBus PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5DBUS_LIBRARY_DIRS}")
set_target_properties(Qt5DBus::Qt5DBus PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5DBUS_LIB_LIBRARIES}")
set_target_properties(Qt5DBus::Qt5DBus PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5DBUS_CFLAGS_OTHER}")
