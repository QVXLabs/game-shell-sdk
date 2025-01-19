
find_package(PkgConfig REQUIRED)

pkg_check_modules(XXF86VM REQUIRED xxf86vm)

add_library(xxf86vm::xxf86vm INTERFACE IMPORTED)
set_target_properties(xxf86vm::xxf86vm PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XXF86VM_INCLUDE_DIRS}")
set_target_properties(xxf86vm::xxf86vm PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XXF86VM_LIBRARY_DIRS}")
set_target_properties(xxf86vm::xxf86vm PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XXF86VM_LIB_LIBRARIES}")
set_target_properties(xxf86vm::xxf86vm PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XXF86VM_CFLAGS_OTHER}")
