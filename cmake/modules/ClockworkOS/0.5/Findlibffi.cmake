
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBFFI REQUIRED libffi)

add_library(libffi::libffi INTERFACE IMPORTED)
set_target_properties(libffi::libffi PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBFFI_INCLUDE_DIRS}")
set_target_properties(libffi::libffi PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBFFI_LIBRARY_DIRS}")
set_target_properties(libffi::libffi PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBFFI_LIB_LIBRARIES}")
set_target_properties(libffi::libffi PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBFFI_CFLAGS_OTHER}")
