
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5XML REQUIRED Qt5Xml)

add_library(Qt5Xml::Qt5Xml INTERFACE IMPORTED)
set_target_properties(Qt5Xml::Qt5Xml PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5XML_INCLUDE_DIRS}")
set_target_properties(Qt5Xml::Qt5Xml PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5XML_LIBRARY_DIRS}")
set_target_properties(Qt5Xml::Qt5Xml PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5XML_LIB_LIBRARIES}")
set_target_properties(Qt5Xml::Qt5Xml PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5XML_CFLAGS_OTHER}")
