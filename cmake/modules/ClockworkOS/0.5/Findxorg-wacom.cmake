
find_package(PkgConfig REQUIRED)

pkg_check_modules(XORG_WACOM REQUIRED xorg-wacom)

add_library(xorg_wacom::xorg_wacom INTERFACE IMPORTED)
set_target_properties(xorg_wacom::xorg_wacom PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XORG_WACOM_INCLUDE_DIRS}")
set_target_properties(xorg_wacom::xorg_wacom PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XORG_WACOM_LIBRARY_DIRS}")
set_target_properties(xorg_wacom::xorg_wacom PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XORG_WACOM_LIBRARIES}")
set_target_properties(xorg_wacom::xorg_wacom PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XORG_WACOM_CFLAGS_OTHER}")
