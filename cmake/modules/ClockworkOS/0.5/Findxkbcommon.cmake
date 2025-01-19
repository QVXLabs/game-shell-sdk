
find_package(PkgConfig REQUIRED)

pkg_check_modules(XKBCOMMON REQUIRED xkbcommon)

add_library(xkbcommon::xkbcommon INTERFACE IMPORTED)
set_target_properties(xkbcommon::xkbcommon PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XKBCOMMON_INCLUDE_DIRS}")
set_target_properties(xkbcommon::xkbcommon PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XKBCOMMON_LIBRARY_DIRS}")
set_target_properties(xkbcommon::xkbcommon PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XKBCOMMON_LIB_LIBRARIES}")
set_target_properties(xkbcommon::xkbcommon PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XKBCOMMON_CFLAGS_OTHER}")
