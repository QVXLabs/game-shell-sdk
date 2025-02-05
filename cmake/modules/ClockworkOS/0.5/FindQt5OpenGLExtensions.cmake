
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5OPENGLEXTENSIONS REQUIRED Qt5OpenGLExtensions)

add_library(Qt5OpenGLExtensions::Qt5OpenGLExtensions INTERFACE IMPORTED)
set_target_properties(Qt5OpenGLExtensions::Qt5OpenGLExtensions PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5OPENGLEXTENSIONS_INCLUDE_DIRS}")
set_target_properties(Qt5OpenGLExtensions::Qt5OpenGLExtensions PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5OPENGLEXTENSIONS_LIBRARY_DIRS}")
set_target_properties(Qt5OpenGLExtensions::Qt5OpenGLExtensions PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5OPENGLEXTENSIONS_LIBRARIES}")
set_target_properties(Qt5OpenGLExtensions::Qt5OpenGLExtensions PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5OPENGLEXTENSIONS_CFLAGS_OTHER}")
