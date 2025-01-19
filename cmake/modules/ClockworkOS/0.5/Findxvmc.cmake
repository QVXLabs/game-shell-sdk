
find_package(PkgConfig REQUIRED)

pkg_check_modules(XVMC REQUIRED xvmc)

add_library(xvmc::xvmc INTERFACE IMPORTED)
set_target_properties(xvmc::xvmc PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XVMC_INCLUDE_DIRS}")
set_target_properties(xvmc::xvmc PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XVMC_LIBRARY_DIRS}")
set_target_properties(xvmc::xvmc PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XVMC_LIB_LIBRARIES}")
set_target_properties(xvmc::xvmc PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XVMC_CFLAGS_OTHER}")
