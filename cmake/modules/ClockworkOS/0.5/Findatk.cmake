
find_package(PkgConfig REQUIRED)

pkg_check_modules(ATK REQUIRED atk)

add_library(atk::atk INTERFACE IMPORTED)
set_target_properties(atk::atk PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ATK_INCLUDE_DIRS}")
set_target_properties(atk::atk PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ATK_LIBRARY_DIRS}")
set_target_properties(atk::atk PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ATK_LIBRARIES}")
set_target_properties(atk::atk PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ATK_CFLAGS_OTHER}")
