
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBFS REQUIRED libfs)

add_library(libfs::libfs INTERFACE IMPORTED)
set_target_properties(libfs::libfs PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBFS_INCLUDE_DIRS}")
set_target_properties(libfs::libfs PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBFS_LIBRARY_DIRS}")
set_target_properties(libfs::libfs PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBFS_LIB_LIBRARIES}")
set_target_properties(libfs::libfs PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBFS_CFLAGS_OTHER}")
