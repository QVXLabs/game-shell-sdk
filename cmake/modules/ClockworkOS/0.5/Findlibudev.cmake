
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBUDEV REQUIRED libudev)

add_library(libudev::libudev INTERFACE IMPORTED)
set_target_properties(libudev::libudev PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBUDEV_INCLUDE_DIRS}")
set_target_properties(libudev::libudev PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBUDEV_LIBRARY_DIRS}")
set_target_properties(libudev::libudev PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBUDEV_LIB_LIBRARIES}")
set_target_properties(libudev::libudev PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBUDEV_CFLAGS_OTHER}")
