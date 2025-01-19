
find_package(PkgConfig REQUIRED)

pkg_check_modules(XTST REQUIRED xtst)

add_library(xtst::xtst INTERFACE IMPORTED)
set_target_properties(xtst::xtst PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XTST_INCLUDE_DIRS}")
set_target_properties(xtst::xtst PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XTST_LIBRARY_DIRS}")
set_target_properties(xtst::xtst PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XTST_LIB_LIBRARIES}")
set_target_properties(xtst::xtst PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XTST_CFLAGS_OTHER}")
