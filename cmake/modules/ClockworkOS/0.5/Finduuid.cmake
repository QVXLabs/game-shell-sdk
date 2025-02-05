
find_package(PkgConfig REQUIRED)

pkg_check_modules(UUID REQUIRED uuid)

add_library(uuid::uuid INTERFACE IMPORTED)
set_target_properties(uuid::uuid PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${UUID_INCLUDE_DIRS}")
set_target_properties(uuid::uuid PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${UUID_LIBRARY_DIRS}")
set_target_properties(uuid::uuid PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${UUID_LIBRARIES}")
set_target_properties(uuid::uuid PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${UUID_CFLAGS_OTHER}")
