
find_package(PkgConfig REQUIRED)

pkg_check_modules(PCIACCESS REQUIRED pciaccess)

add_library(pciaccess::pciaccess INTERFACE IMPORTED)
set_target_properties(pciaccess::pciaccess PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PCIACCESS_INCLUDE_DIRS}")
set_target_properties(pciaccess::pciaccess PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PCIACCESS_LIBRARY_DIRS}")
set_target_properties(pciaccess::pciaccess PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PCIACCESS_LIB_LIBRARIES}")
set_target_properties(pciaccess::pciaccess PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PCIACCESS_CFLAGS_OTHER}")
