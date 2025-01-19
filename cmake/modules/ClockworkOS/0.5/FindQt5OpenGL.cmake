
find_package(PkgConfig REQUIRED)

pkg_check_modules(QT5OPENGL REQUIRED Qt5OpenGL)

add_library(Qt5OpenGL::Qt5OpenGL INTERFACE IMPORTED)
set_target_properties(Qt5OpenGL::Qt5OpenGL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${QT5OPENGL_INCLUDE_DIRS}")
set_target_properties(Qt5OpenGL::Qt5OpenGL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${QT5OPENGL_LIBRARY_DIRS}")
set_target_properties(Qt5OpenGL::Qt5OpenGL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${QT5OPENGL_LIB_LIBRARIES}")
set_target_properties(Qt5OpenGL::Qt5OpenGL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${QT5OPENGL_CFLAGS_OTHER}")
