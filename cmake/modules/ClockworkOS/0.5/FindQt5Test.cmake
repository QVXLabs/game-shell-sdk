
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5TEST REQUIRED Qt5Test)

add_library(Qt5Test::Qt5Test INTERFACE IMPORTED)
set_target_properties(Qt5Test::Qt5Test PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5TEST_INCLUDE_DIRS}")
set_target_properties(Qt5Test::Qt5Test PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5TEST_LIBRARY_DIRS}")
set_target_properties(Qt5Test::Qt5Test PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5TEST_LIBRARIES}")
set_target_properties(Qt5Test::Qt5Test PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5TEST_CFLAGS_OTHER}")
