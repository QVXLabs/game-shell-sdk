
find_package(PkgConfig REQUIRED)

pkg_check_modules(GL REQUIRED gl)

add_library(gl::gl INTERFACE IMPORTED)
set_target_properties(gl::gl PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GL_INCLUDE_DIRS}")
set_target_properties(gl::gl PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GL_LIBRARY_DIRS}")
set_target_properties(gl::gl PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GL_LIB_LIBRARIES}")
set_target_properties(gl::gl PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GL_CFLAGS_OTHER}")
