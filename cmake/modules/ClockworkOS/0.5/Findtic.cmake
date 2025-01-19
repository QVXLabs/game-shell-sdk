
find_package(PkgConfig REQUIRED)

pkg_check_modules(TIC REQUIRED tic)

add_library(tic::tic INTERFACE IMPORTED)
set_target_properties(tic::tic PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${TIC_INCLUDE_DIRS}")
set_target_properties(tic::tic PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${TIC_LIBRARY_DIRS}")
set_target_properties(tic::tic PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${TIC_LIB_LIBRARIES}")
set_target_properties(tic::tic PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${TIC_CFLAGS_OTHER}")
