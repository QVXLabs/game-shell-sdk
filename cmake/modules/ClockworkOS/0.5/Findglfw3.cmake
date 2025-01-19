
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLFW3 REQUIRED glfw3)

add_library(glfw3::glfw3 INTERFACE IMPORTED)
set_target_properties(glfw3::glfw3 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLFW3_INCLUDE_DIRS}")
set_target_properties(glfw3::glfw3 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLFW3_LIBRARY_DIRS}")
set_target_properties(glfw3::glfw3 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLFW3_LIB_LIBRARIES}")
set_target_properties(glfw3::glfw3 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLFW3_CFLAGS_OTHER}")
