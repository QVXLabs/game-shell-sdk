
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5WIDGETS REQUIRED Qt5Widgets)

add_library(Qt5Widgets::Qt5Widgets INTERFACE IMPORTED)
set_target_properties(Qt5Widgets::Qt5Widgets PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5WIDGETS_INCLUDE_DIRS}")
set_target_properties(Qt5Widgets::Qt5Widgets PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5WIDGETS_LIBRARY_DIRS}")
set_target_properties(Qt5Widgets::Qt5Widgets PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5WIDGETS_LIB_LIBRARIES}")
set_target_properties(Qt5Widgets::Qt5Widgets PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5WIDGETS_CFLAGS_OTHER}")
