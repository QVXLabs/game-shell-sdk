
find_package(PkgConfig REQUIRED)

pkg_check_modules(FIXESPROTO REQUIRED fixesproto)

add_library(fixesproto::fixesproto INTERFACE IMPORTED)
set_target_properties(fixesproto::fixesproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FIXESPROTO_INCLUDE_DIRS}")
set_target_properties(fixesproto::fixesproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FIXESPROTO_LIBRARY_DIRS}")
set_target_properties(fixesproto::fixesproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FIXESPROTO_LIB_LIBRARIES}")
set_target_properties(fixesproto::fixesproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FIXESPROTO_CFLAGS_OTHER}")
