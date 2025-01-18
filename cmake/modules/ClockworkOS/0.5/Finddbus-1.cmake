
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(DBUS_1 REQUIRED dbus-1)

add_library(DBUS_1 INTERFACE IMPORTED)
set_target_properties(DBUS_1 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DBUS_1_INCLUDE_DIRS}")
set_target_properties(DBUS_1 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DBUS_1_LIBRARY_DIRS}")
set_target_properties(DBUS_1 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DBUS_1_LIB_LIBRARIES}")
set_target_properties(DBUS_1 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DBUS_1_CFLAGS_OTHER}")
