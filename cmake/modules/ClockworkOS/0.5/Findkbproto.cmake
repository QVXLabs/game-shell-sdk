
find_package(PkgConfig REQUIRED)

pkg_check_modules(KBPROTO REQUIRED kbproto)

add_library(kbproto::kbproto INTERFACE IMPORTED)
set_target_properties(kbproto::kbproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${KBPROTO_INCLUDE_DIRS}")
set_target_properties(kbproto::kbproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${KBPROTO_LIBRARY_DIRS}")
set_target_properties(kbproto::kbproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${KBPROTO_LIBRARIES}")
set_target_properties(kbproto::kbproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${KBPROTO_CFLAGS_OTHER}")
