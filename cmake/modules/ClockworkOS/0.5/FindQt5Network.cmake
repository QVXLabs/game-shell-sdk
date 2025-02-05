
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5NETWORK REQUIRED Qt5Network)

add_library(Qt5Network::Qt5Network INTERFACE IMPORTED)
set_target_properties(Qt5Network::Qt5Network PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5NETWORK_INCLUDE_DIRS}")
set_target_properties(Qt5Network::Qt5Network PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5NETWORK_LIBRARY_DIRS}")
set_target_properties(Qt5Network::Qt5Network PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5NETWORK_LIBRARIES}")
set_target_properties(Qt5Network::Qt5Network PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5NETWORK_CFLAGS_OTHER}")
