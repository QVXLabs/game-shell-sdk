
find_package(PkgConfig REQUIRED)

pkg_check_modules(AVAHI_CLIENT REQUIRED avahi-client)

add_library(avahi_client::avahi_client INTERFACE IMPORTED)
set_target_properties(avahi_client::avahi_client PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${AVAHI_CLIENT_INCLUDE_DIRS}")
set_target_properties(avahi_client::avahi_client PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${AVAHI_CLIENT_LIBRARY_DIRS}")
set_target_properties(avahi_client::avahi_client PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${AVAHI_CLIENT_LIB_LIBRARIES}")
set_target_properties(avahi_client::avahi_client PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${AVAHI_CLIENT_CFLAGS_OTHER}")
