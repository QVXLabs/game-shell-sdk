
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5CORE REQUIRED Qt5Core)

add_library(Qt5Core::Qt5Core INTERFACE IMPORTED)
set_target_properties(Qt5Core::Qt5Core PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5CORE_INCLUDE_DIRS}")
set_target_properties(Qt5Core::Qt5Core PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5CORE_LIBRARY_DIRS}")
set_target_properties(Qt5Core::Qt5Core PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5CORE_LIB_LIBRARIES}")
set_target_properties(Qt5Core::Qt5Core PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5CORE_CFLAGS_OTHER}")
