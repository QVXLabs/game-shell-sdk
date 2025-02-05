
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPULSE_SIMPLE REQUIRED libpulse-simple)

add_library(libpulse_simple::libpulse_simple INTERFACE IMPORTED)
set_target_properties(libpulse_simple::libpulse_simple PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPULSE_SIMPLE_INCLUDE_DIRS}")
set_target_properties(libpulse_simple::libpulse_simple PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPULSE_SIMPLE_LIBRARY_DIRS}")
set_target_properties(libpulse_simple::libpulse_simple PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPULSE_SIMPLE_LIBRARIES}")
set_target_properties(libpulse_simple::libpulse_simple PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPULSE_SIMPLE_CFLAGS_OTHER}")
