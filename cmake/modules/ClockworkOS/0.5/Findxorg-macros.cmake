
find_package(PkgConfig REQUIRED)

pkg_check_modules(XORG_MACROS REQUIRED xorg-macros)

add_library(xorg_macros::xorg_macros INTERFACE IMPORTED)
set_target_properties(xorg_macros::xorg_macros PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XORG_MACROS_INCLUDE_DIRS}")
set_target_properties(xorg_macros::xorg_macros PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XORG_MACROS_LIBRARY_DIRS}")
set_target_properties(xorg_macros::xorg_macros PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XORG_MACROS_LIB_LIBRARIES}")
set_target_properties(xorg_macros::xorg_macros PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XORG_MACROS_CFLAGS_OTHER}")
