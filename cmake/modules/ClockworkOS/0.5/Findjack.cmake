
find_package(PkgConfig REQUIRED)

pkg_check_modules(JACK REQUIRED jack)

add_library(jack::jack INTERFACE IMPORTED)
set_target_properties(jack::jack PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${JACK_INCLUDE_DIRS}")
set_target_properties(jack::jack PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${JACK_LIBRARY_DIRS}")
set_target_properties(jack::jack PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${JACK_LIB_LIBRARIES}")
set_target_properties(jack::jack PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${JACK_CFLAGS_OTHER}")
