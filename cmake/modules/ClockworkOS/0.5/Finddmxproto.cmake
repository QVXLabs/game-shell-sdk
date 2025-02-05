
find_package(PkgConfig REQUIRED)

pkg_check_modules(DMXPROTO REQUIRED dmxproto)

add_library(dmxproto::dmxproto INTERFACE IMPORTED)
set_target_properties(dmxproto::dmxproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DMXPROTO_INCLUDE_DIRS}")
set_target_properties(dmxproto::dmxproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DMXPROTO_LIBRARY_DIRS}")
set_target_properties(dmxproto::dmxproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DMXPROTO_LIBRARIES}")
set_target_properties(dmxproto::dmxproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DMXPROTO_CFLAGS_OTHER}")
