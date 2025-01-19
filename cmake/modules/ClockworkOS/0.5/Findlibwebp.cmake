
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBWEBP REQUIRED libwebp)

add_library(libwebp::libwebp INTERFACE IMPORTED)
set_target_properties(libwebp::libwebp PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBWEBP_INCLUDE_DIRS}")
set_target_properties(libwebp::libwebp PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBWEBP_LIBRARY_DIRS}")
set_target_properties(libwebp::libwebp PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBWEBP_LIB_LIBRARIES}")
set_target_properties(libwebp::libwebp PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBWEBP_CFLAGS_OTHER}")
