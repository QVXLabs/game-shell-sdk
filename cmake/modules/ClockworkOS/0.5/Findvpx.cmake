
find_package(PkgConfig REQUIRED)

pkg_check_modules(VPX REQUIRED vpx)

add_library(vpx::vpx INTERFACE IMPORTED)
set_target_properties(vpx::vpx PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${VPX_INCLUDE_DIRS}")
set_target_properties(vpx::vpx PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${VPX_LIBRARY_DIRS}")
set_target_properties(vpx::vpx PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${VPX_LIB_LIBRARIES}")
set_target_properties(vpx::vpx PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${VPX_CFLAGS_OTHER}")
