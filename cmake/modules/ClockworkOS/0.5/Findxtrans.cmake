
find_package(PkgConfig REQUIRED)

pkg_check_modules(XTRANS REQUIRED xtrans)

add_library(xtrans::xtrans INTERFACE IMPORTED)
set_target_properties(xtrans::xtrans PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XTRANS_INCLUDE_DIRS}")
set_target_properties(xtrans::xtrans PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XTRANS_LIBRARY_DIRS}")
set_target_properties(xtrans::xtrans PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XTRANS_LIB_LIBRARIES}")
set_target_properties(xtrans::xtrans PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XTRANS_CFLAGS_OTHER}")
