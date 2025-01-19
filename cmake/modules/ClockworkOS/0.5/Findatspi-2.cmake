
find_package(PkgConfig REQUIRED)

pkg_check_modules(ATSPI_2 REQUIRED atspi-2)

add_library(atspi_2::atspi_2 INTERFACE IMPORTED)
set_target_properties(atspi_2::atspi_2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ATSPI_2_INCLUDE_DIRS}")
set_target_properties(atspi_2::atspi_2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ATSPI_2_LIBRARY_DIRS}")
set_target_properties(atspi_2::atspi_2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ATSPI_2_LIB_LIBRARIES}")
set_target_properties(atspi_2::atspi_2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ATSPI_2_CFLAGS_OTHER}")
