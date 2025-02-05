
find_package(PkgConfig REQUIRED)

pkg_check_modules(XRENDER REQUIRED xrender)

add_library(xrender::xrender INTERFACE IMPORTED)
set_target_properties(xrender::xrender PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XRENDER_INCLUDE_DIRS}")
set_target_properties(xrender::xrender PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XRENDER_LIBRARY_DIRS}")
set_target_properties(xrender::xrender PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XRENDER_LIBRARIES}")
set_target_properties(xrender::xrender PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XRENDER_CFLAGS_OTHER}")
