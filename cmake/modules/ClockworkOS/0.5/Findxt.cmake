
find_package(PkgConfig REQUIRED)

pkg_check_modules(XT REQUIRED xt)

add_library(xt::xt INTERFACE IMPORTED)
set_target_properties(xt::xt PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XT_INCLUDE_DIRS}")
set_target_properties(xt::xt PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XT_LIBRARY_DIRS}")
set_target_properties(xt::xt PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XT_LIB_LIBRARIES}")
set_target_properties(xt::xt PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XT_CFLAGS_OTHER}")
