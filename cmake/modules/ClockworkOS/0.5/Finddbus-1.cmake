
find_package(PkgConfig REQUIRED)

pkg_check_modules(DBUS_1 REQUIRED dbus-1)

add_library(dbus_1::dbus_1 INTERFACE IMPORTED)
set_target_properties(dbus_1::dbus_1 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DBUS_1_INCLUDE_DIRS}")
set_target_properties(dbus_1::dbus_1 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DBUS_1_LIBRARY_DIRS}")
set_target_properties(dbus_1::dbus_1 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DBUS_1_LIBRARIES}")
set_target_properties(dbus_1::dbus_1 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DBUS_1_CFLAGS_OTHER}")
