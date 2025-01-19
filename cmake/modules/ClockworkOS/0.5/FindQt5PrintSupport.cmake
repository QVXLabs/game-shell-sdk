
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5PRINTSUPPORT REQUIRED Qt5PrintSupport)

add_library(Qt5PrintSupport::Qt5PrintSupport INTERFACE IMPORTED)
set_target_properties(Qt5PrintSupport::Qt5PrintSupport PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5PRINTSUPPORT_INCLUDE_DIRS}")
set_target_properties(Qt5PrintSupport::Qt5PrintSupport PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5PRINTSUPPORT_LIBRARY_DIRS}")
set_target_properties(Qt5PrintSupport::Qt5PrintSupport PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5PRINTSUPPORT_LIB_LIBRARIES}")
set_target_properties(Qt5PrintSupport::Qt5PrintSupport PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5PRINTSUPPORT_CFLAGS_OTHER}")
