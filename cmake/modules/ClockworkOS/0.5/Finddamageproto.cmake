
find_package(PkgConfig REQUIRED)

pkg_check_modules(DAMAGEPROTO REQUIRED damageproto)

add_library(damageproto::damageproto INTERFACE IMPORTED)
set_target_properties(damageproto::damageproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${DAMAGEPROTO_INCLUDE_DIRS}")
set_target_properties(damageproto::damageproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${DAMAGEPROTO_LIBRARY_DIRS}")
set_target_properties(damageproto::damageproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${DAMAGEPROTO_LIBRARIES}")
set_target_properties(damageproto::damageproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${DAMAGEPROTO_CFLAGS_OTHER}")
