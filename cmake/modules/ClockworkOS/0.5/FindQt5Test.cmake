
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5TEST REQUIRED Qt5Test)

add_library(QT5TEST INTERFACE IMPORTED)
set_target_properties(QT5TEST PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5TEST_INCLUDE_DIRS}")
set_target_properties(QT5TEST PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5TEST_LIBRARY_DIRS}")
set_target_properties(QT5TEST PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5TEST_LIB_LIBRARIES}")
set_target_properties(QT5TEST PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5TEST_CFLAGS_OTHER}")
