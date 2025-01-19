
find_package(PkgConfig REQUIRED)

pkg_check_modules(XDAMAGE REQUIRED xdamage)

add_library(xdamage::xdamage INTERFACE IMPORTED)
set_target_properties(xdamage::xdamage PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XDAMAGE_INCLUDE_DIRS}")
set_target_properties(xdamage::xdamage PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XDAMAGE_LIBRARY_DIRS}")
set_target_properties(xdamage::xdamage PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XDAMAGE_LIB_LIBRARIES}")
set_target_properties(xdamage::xdamage PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XDAMAGE_CFLAGS_OTHER}")
