
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5XML REQUIRED Qt5Xml)

add_library(QT5XML INTERFACE IMPORTED)
set_target_properties(QT5XML PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5XML_INCLUDE_DIRS}")
set_target_properties(QT5XML PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5XML_LIBRARY_DIRS}")
set_target_properties(QT5XML PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5XML_LIB_LIBRARIES}")
set_target_properties(QT5XML PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5XML_CFLAGS_OTHER}")
