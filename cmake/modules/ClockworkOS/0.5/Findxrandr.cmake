
find_package(PkgConfig REQUIRED)

pkg_check_modules(XRANDR REQUIRED xrandr)

add_library(xrandr::xrandr INTERFACE IMPORTED)
set_target_properties(xrandr::xrandr PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XRANDR_INCLUDE_DIRS}")
set_target_properties(xrandr::xrandr PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XRANDR_LIBRARY_DIRS}")
set_target_properties(xrandr::xrandr PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XRANDR_LIBRARIES}")
set_target_properties(xrandr::xrandr PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XRANDR_CFLAGS_OTHER}")
