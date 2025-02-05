
find_package(PkgConfig REQUIRED)

pkg_check_modules(PRESENTPROTO REQUIRED presentproto)

add_library(presentproto::presentproto INTERFACE IMPORTED)
set_target_properties(presentproto::presentproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PRESENTPROTO_INCLUDE_DIRS}")
set_target_properties(presentproto::presentproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PRESENTPROTO_LIBRARY_DIRS}")
set_target_properties(presentproto::presentproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PRESENTPROTO_LIBRARIES}")
set_target_properties(presentproto::presentproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PRESENTPROTO_CFLAGS_OTHER}")
