
find_package(PkgConfig REQUIRED)

pkg_check_modules(XINERAMAPROTO REQUIRED xineramaproto)

add_library(xineramaproto::xineramaproto INTERFACE IMPORTED)
set_target_properties(xineramaproto::xineramaproto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XINERAMAPROTO_INCLUDE_DIRS}")
set_target_properties(xineramaproto::xineramaproto PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XINERAMAPROTO_LIBRARY_DIRS}")
set_target_properties(xineramaproto::xineramaproto PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XINERAMAPROTO_LIBRARIES}")
set_target_properties(xineramaproto::xineramaproto PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XINERAMAPROTO_CFLAGS_OTHER}")
