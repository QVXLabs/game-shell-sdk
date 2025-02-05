
find_package(PkgConfig REQUIRED)

pkg_check_modules(XSHMFENCE REQUIRED xshmfence)

add_library(xshmfence::xshmfence INTERFACE IMPORTED)
set_target_properties(xshmfence::xshmfence PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XSHMFENCE_INCLUDE_DIRS}")
set_target_properties(xshmfence::xshmfence PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XSHMFENCE_LIBRARY_DIRS}")
set_target_properties(xshmfence::xshmfence PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XSHMFENCE_LIBRARIES}")
set_target_properties(xshmfence::xshmfence PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XSHMFENCE_CFLAGS_OTHER}")
