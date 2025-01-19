
find_package(PkgConfig REQUIRED)

pkg_check_modules(SM REQUIRED sm)

add_library(sm::sm INTERFACE IMPORTED)
set_target_properties(sm::sm PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SM_INCLUDE_DIRS}")
set_target_properties(sm::sm PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SM_LIBRARY_DIRS}")
set_target_properties(sm::sm PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SM_LIB_LIBRARIES}")
set_target_properties(sm::sm PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SM_CFLAGS_OTHER}")
