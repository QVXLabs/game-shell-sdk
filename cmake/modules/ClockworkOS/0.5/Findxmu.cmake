
find_package(PkgConfig REQUIRED)

pkg_check_modules(XMU REQUIRED xmu)

add_library(xmu::xmu INTERFACE IMPORTED)
set_target_properties(xmu::xmu PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XMU_INCLUDE_DIRS}")
set_target_properties(xmu::xmu PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XMU_LIBRARY_DIRS}")
set_target_properties(xmu::xmu PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XMU_LIBRARIES}")
set_target_properties(xmu::xmu PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XMU_CFLAGS_OTHER}")
