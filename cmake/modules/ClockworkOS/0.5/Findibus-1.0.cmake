
find_package(PkgConfig REQUIRED)

pkg_check_modules(IBUS_1.0 REQUIRED ibus-1.0)

add_library(ibus_1.0::ibus_1.0 INTERFACE IMPORTED)
set_target_properties(ibus_1.0::ibus_1.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${IBUS_1.0_INCLUDE_DIRS}")
set_target_properties(ibus_1.0::ibus_1.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${IBUS_1.0_LIBRARY_DIRS}")
set_target_properties(ibus_1.0::ibus_1.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${IBUS_1.0_LIBRARIES}")
set_target_properties(ibus_1.0::ibus_1.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${IBUS_1.0_CFLAGS_OTHER}")
