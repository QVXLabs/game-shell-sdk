
find_package(PkgConfig REQUIRED)

pkg_check_modules(XINERAMA REQUIRED xinerama)

add_library(xinerama::xinerama INTERFACE IMPORTED)
set_target_properties(xinerama::xinerama PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XINERAMA_INCLUDE_DIRS}")
set_target_properties(xinerama::xinerama PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XINERAMA_LIBRARY_DIRS}")
set_target_properties(xinerama::xinerama PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XINERAMA_LIBRARIES}")
set_target_properties(xinerama::xinerama PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XINERAMA_CFLAGS_OTHER}")
