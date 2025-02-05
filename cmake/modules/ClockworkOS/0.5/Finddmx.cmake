
find_package(PkgConfig REQUIRED)

pkg_check_modules(DMX REQUIRED dmx)

add_library(dmx::dmx INTERFACE IMPORTED)
set_target_properties(dmx::dmx PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DMX_INCLUDE_DIRS}")
set_target_properties(dmx::dmx PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DMX_LIBRARY_DIRS}")
set_target_properties(dmx::dmx PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DMX_LIBRARIES}")
set_target_properties(dmx::dmx PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DMX_CFLAGS_OTHER}")
