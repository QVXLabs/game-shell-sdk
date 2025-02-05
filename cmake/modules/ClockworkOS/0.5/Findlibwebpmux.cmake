
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBWEBPMUX REQUIRED libwebpmux)

add_library(libwebpmux::libwebpmux INTERFACE IMPORTED)
set_target_properties(libwebpmux::libwebpmux PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBWEBPMUX_INCLUDE_DIRS}")
set_target_properties(libwebpmux::libwebpmux PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBWEBPMUX_LIBRARY_DIRS}")
set_target_properties(libwebpmux::libwebpmux PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBWEBPMUX_LIBRARIES}")
set_target_properties(libwebpmux::libwebpmux PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBWEBPMUX_CFLAGS_OTHER}")
