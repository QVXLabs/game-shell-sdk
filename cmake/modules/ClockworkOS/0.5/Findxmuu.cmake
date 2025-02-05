
find_package(PkgConfig REQUIRED)

pkg_check_modules(XMUU REQUIRED xmuu)

add_library(xmuu::xmuu INTERFACE IMPORTED)
set_target_properties(xmuu::xmuu PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XMUU_INCLUDE_DIRS}")
set_target_properties(xmuu::xmuu PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XMUU_LIBRARY_DIRS}")
set_target_properties(xmuu::xmuu PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XMUU_LIBRARIES}")
set_target_properties(xmuu::xmuu PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XMUU_CFLAGS_OTHER}")
