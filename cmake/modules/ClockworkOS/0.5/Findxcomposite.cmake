
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCOMPOSITE REQUIRED xcomposite)

add_library(xcomposite::xcomposite INTERFACE IMPORTED)
set_target_properties(xcomposite::xcomposite PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCOMPOSITE_INCLUDE_DIRS}")
set_target_properties(xcomposite::xcomposite PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCOMPOSITE_LIBRARY_DIRS}")
set_target_properties(xcomposite::xcomposite PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCOMPOSITE_LIBRARIES}")
set_target_properties(xcomposite::xcomposite PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCOMPOSITE_CFLAGS_OTHER}")
