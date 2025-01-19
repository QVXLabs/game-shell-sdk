
find_package(PkgConfig REQUIRED)

pkg_check_modules(XAW7 REQUIRED xaw7)

add_library(xaw7::xaw7 INTERFACE IMPORTED)
set_target_properties(xaw7::xaw7 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XAW7_INCLUDE_DIRS}")
set_target_properties(xaw7::xaw7 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XAW7_LIBRARY_DIRS}")
set_target_properties(xaw7::xaw7 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XAW7_LIB_LIBRARIES}")
set_target_properties(xaw7::xaw7 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XAW7_CFLAGS_OTHER}")
