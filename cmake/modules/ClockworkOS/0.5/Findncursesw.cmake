
find_package(PkgConfig REQUIRED)

pkg_check_modules(NCURSESW REQUIRED ncursesw)

add_library(ncursesw::ncursesw INTERFACE IMPORTED)
set_target_properties(ncursesw::ncursesw PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NCURSESW_INCLUDE_DIRS}")
set_target_properties(ncursesw::ncursesw PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NCURSESW_LIBRARY_DIRS}")
set_target_properties(ncursesw::ncursesw PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NCURSESW_LIB_LIBRARIES}")
set_target_properties(ncursesw::ncursesw PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NCURSESW_CFLAGS_OTHER}")
