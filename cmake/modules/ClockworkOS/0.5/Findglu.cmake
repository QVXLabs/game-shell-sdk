
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLU REQUIRED glu)

add_library(glu::glu INTERFACE IMPORTED)
set_target_properties(glu::glu PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLU_INCLUDE_DIRS}")
set_target_properties(glu::glu PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLU_LIBRARY_DIRS}")
set_target_properties(glu::glu PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLU_LIB_LIBRARIES}")
set_target_properties(glu::glu PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLU_CFLAGS_OTHER}")
