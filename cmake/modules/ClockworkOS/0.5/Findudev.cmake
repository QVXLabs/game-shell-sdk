
find_package(PkgConfig REQUIRED)

pkg_check_modules(UDEV REQUIRED udev)

add_library(udev::udev INTERFACE IMPORTED)
set_target_properties(udev::udev PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${UDEV_INCLUDE_DIRS}")
set_target_properties(udev::udev PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${UDEV_LIBRARY_DIRS}")
set_target_properties(udev::udev PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${UDEV_LIB_LIBRARIES}")
set_target_properties(udev::udev PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${UDEV_CFLAGS_OTHER}")
