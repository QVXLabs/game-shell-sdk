
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPULSE REQUIRED libpulse)

add_library(libpulse::libpulse INTERFACE IMPORTED)
set_target_properties(libpulse::libpulse PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPULSE_INCLUDE_DIRS}")
set_target_properties(libpulse::libpulse PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPULSE_LIBRARY_DIRS}")
set_target_properties(libpulse::libpulse PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPULSE_LIBRARIES}")
set_target_properties(libpulse::libpulse PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPULSE_CFLAGS_OTHER}")
