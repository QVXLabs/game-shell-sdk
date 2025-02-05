
find_package(PkgConfig REQUIRED)

pkg_check_modules(PIXMAN_1 REQUIRED pixman-1)

add_library(pixman_1::pixman_1 INTERFACE IMPORTED)
set_target_properties(pixman_1::pixman_1 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PIXMAN_1_INCLUDE_DIRS}")
set_target_properties(pixman_1::pixman_1 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PIXMAN_1_LIBRARY_DIRS}")
set_target_properties(pixman_1::pixman_1 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PIXMAN_1_LIBRARIES}")
set_target_properties(pixman_1::pixman_1 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PIXMAN_1_CFLAGS_OTHER}")
