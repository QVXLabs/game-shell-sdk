
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5GUI REQUIRED Qt5Gui)

add_library(Qt5Gui::Qt5Gui INTERFACE IMPORTED)
set_target_properties(Qt5Gui::Qt5Gui PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5GUI_INCLUDE_DIRS}")
set_target_properties(Qt5Gui::Qt5Gui PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5GUI_LIBRARY_DIRS}")
set_target_properties(Qt5Gui::Qt5Gui PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5GUI_LIB_LIBRARIES}")
set_target_properties(Qt5Gui::Qt5Gui PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5GUI_CFLAGS_OTHER}")
