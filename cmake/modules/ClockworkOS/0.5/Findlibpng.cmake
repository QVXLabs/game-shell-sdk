
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPNG REQUIRED libpng)

add_library(libpng::libpng INTERFACE IMPORTED)
set_target_properties(libpng::libpng PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPNG_INCLUDE_DIRS}")
set_target_properties(libpng::libpng PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPNG_LIBRARY_DIRS}")
set_target_properties(libpng::libpng PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPNG_LIB_LIBRARIES}")
set_target_properties(libpng::libpng PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPNG_CFLAGS_OTHER}")
