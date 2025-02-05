
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5CONCURRENT REQUIRED Qt5Concurrent)

add_library(Qt5Concurrent::Qt5Concurrent INTERFACE IMPORTED)
set_target_properties(Qt5Concurrent::Qt5Concurrent PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5CONCURRENT_INCLUDE_DIRS}")
set_target_properties(Qt5Concurrent::Qt5Concurrent PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5CONCURRENT_LIBRARY_DIRS}")
set_target_properties(Qt5Concurrent::Qt5Concurrent PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5CONCURRENT_LIBRARIES}")
set_target_properties(Qt5Concurrent::Qt5Concurrent PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5CONCURRENT_CFLAGS_OTHER}")
