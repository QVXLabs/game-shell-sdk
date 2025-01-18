
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5CONCURRENT REQUIRED Qt5Concurrent)

add_library(QT5CONCURRENT INTERFACE IMPORTED)
set_target_properties(QT5CONCURRENT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5CONCURRENT_INCLUDE_DIRS}")
set_target_properties(QT5CONCURRENT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5CONCURRENT_LIBRARY_DIRS}")
set_target_properties(QT5CONCURRENT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5CONCURRENT_LIB_LIBRARIES}")
set_target_properties(QT5CONCURRENT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5CONCURRENT_CFLAGS_OTHER}")
