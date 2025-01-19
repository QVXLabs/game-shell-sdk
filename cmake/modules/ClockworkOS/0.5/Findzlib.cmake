
find_package(PkgConfig REQUIRED)

pkg_check_modules(ZLIB REQUIRED zlib)

add_library(zlib::zlib INTERFACE IMPORTED)
set_target_properties(zlib::zlib PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ZLIB_INCLUDE_DIRS}")
set_target_properties(zlib::zlib PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ZLIB_LIBRARY_DIRS}")
set_target_properties(zlib::zlib PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ZLIB_LIB_LIBRARIES}")
set_target_properties(zlib::zlib PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ZLIB_CFLAGS_OTHER}")
