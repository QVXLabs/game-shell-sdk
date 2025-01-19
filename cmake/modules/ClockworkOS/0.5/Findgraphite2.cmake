
find_package(PkgConfig REQUIRED)

pkg_check_modules(GRAPHITE2 REQUIRED graphite2)

add_library(graphite2::graphite2 INTERFACE IMPORTED)
set_target_properties(graphite2::graphite2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GRAPHITE2_INCLUDE_DIRS}")
set_target_properties(graphite2::graphite2 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GRAPHITE2_LIBRARY_DIRS}")
set_target_properties(graphite2::graphite2 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GRAPHITE2_LIB_LIBRARIES}")
set_target_properties(graphite2::graphite2 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GRAPHITE2_CFLAGS_OTHER}")
