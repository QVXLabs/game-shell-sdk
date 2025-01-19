
find_package(PkgConfig REQUIRED)

pkg_check_modules(XAU REQUIRED xau)

add_library(xau::xau INTERFACE IMPORTED)
set_target_properties(xau::xau PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XAU_INCLUDE_DIRS}")
set_target_properties(xau::xau PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XAU_LIBRARY_DIRS}")
set_target_properties(xau::xau PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XAU_LIB_LIBRARIES}")
set_target_properties(xau::xau PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XAU_CFLAGS_OTHER}")
