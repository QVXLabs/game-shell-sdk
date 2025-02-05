
find_package(PkgConfig REQUIRED)

pkg_check_modules(EXPAT REQUIRED expat)

add_library(expat::expat INTERFACE IMPORTED)
set_target_properties(expat::expat PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${EXPAT_INCLUDE_DIRS}")
set_target_properties(expat::expat PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${EXPAT_LIBRARY_DIRS}")
set_target_properties(expat::expat PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${EXPAT_LIBRARIES}")
set_target_properties(expat::expat PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${EXPAT_CFLAGS_OTHER}")
