
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5SQL REQUIRED Qt5Sql)

add_library(QT5SQL INTERFACE IMPORTED)
set_target_properties(QT5SQL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5SQL_INCLUDE_DIRS}")
set_target_properties(QT5SQL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5SQL_LIBRARY_DIRS}")
set_target_properties(QT5SQL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5SQL_LIB_LIBRARIES}")
set_target_properties(QT5SQL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5SQL_CFLAGS_OTHER}")
