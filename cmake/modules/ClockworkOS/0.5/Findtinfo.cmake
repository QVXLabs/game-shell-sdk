
find_package(PkgConfig REQUIRED)

pkg_check_modules(TINFO REQUIRED tinfo)

add_library(tinfo::tinfo INTERFACE IMPORTED)
set_target_properties(tinfo::tinfo PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${TINFO_INCLUDE_DIRS}")
set_target_properties(tinfo::tinfo PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${TINFO_LIBRARY_DIRS}")
set_target_properties(tinfo::tinfo PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${TINFO_LIB_LIBRARIES}")
set_target_properties(tinfo::tinfo PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${TINFO_CFLAGS_OTHER}")
