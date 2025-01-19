
find_package(PkgConfig REQUIRED)

pkg_check_modules(CACA REQUIRED caca)

add_library(caca::caca INTERFACE IMPORTED)
set_target_properties(caca::caca PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CACA_INCLUDE_DIRS}")
set_target_properties(caca::caca PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CACA_LIBRARY_DIRS}")
set_target_properties(caca::caca PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CACA_LIB_LIBRARIES}")
set_target_properties(caca::caca PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CACA_CFLAGS_OTHER}")
