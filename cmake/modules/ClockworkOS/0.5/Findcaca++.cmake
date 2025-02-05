
find_package(PkgConfig REQUIRED)

pkg_check_modules(CACA++ REQUIRED caca++)

add_library(caca++::caca++ INTERFACE IMPORTED)
set_target_properties(caca++::caca++ PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CACA++_INCLUDE_DIRS}")
set_target_properties(caca++::caca++ PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CACA++_LIBRARY_DIRS}")
set_target_properties(caca++::caca++ PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CACA++_LIBRARIES}")
set_target_properties(caca++::caca++ PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CACA++_CFLAGS_OTHER}")
