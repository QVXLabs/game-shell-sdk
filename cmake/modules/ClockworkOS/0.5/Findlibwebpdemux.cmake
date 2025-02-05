
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBWEBPDEMUX REQUIRED libwebpdemux)

add_library(libwebpdemux::libwebpdemux INTERFACE IMPORTED)
set_target_properties(libwebpdemux::libwebpdemux PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBWEBPDEMUX_INCLUDE_DIRS}")
set_target_properties(libwebpdemux::libwebpdemux PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBWEBPDEMUX_LIBRARY_DIRS}")
set_target_properties(libwebpdemux::libwebpdemux PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBWEBPDEMUX_LIBRARIES}")
set_target_properties(libwebpdemux::libwebpdemux PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBWEBPDEMUX_CFLAGS_OTHER}")
