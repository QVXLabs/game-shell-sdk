
find_package(PkgConfig REQUIRED)

pkg_check_modules(VIDEOPROTO REQUIRED videoproto)

add_library(videoproto::videoproto INTERFACE IMPORTED)
set_target_properties(videoproto::videoproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VIDEOPROTO_INCLUDE_DIRS}")
set_target_properties(videoproto::videoproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VIDEOPROTO_LIBRARY_DIRS}")
set_target_properties(videoproto::videoproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VIDEOPROTO_LIB_LIBRARIES}")
set_target_properties(videoproto::videoproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VIDEOPROTO_CFLAGS_OTHER}")
