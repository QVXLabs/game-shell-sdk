
find_package(PkgConfig REQUIRED)

pkg_check_modules(GMODULE_EXPORT_2.0 REQUIRED gmodule-export-2.0)

add_library(gmodule_export_2.0::gmodule_export_2.0 INTERFACE IMPORTED)
set_target_properties(gmodule_export_2.0::gmodule_export_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GMODULE_EXPORT_2.0_INCLUDE_DIRS}")
set_target_properties(gmodule_export_2.0::gmodule_export_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GMODULE_EXPORT_2.0_LIBRARY_DIRS}")
set_target_properties(gmodule_export_2.0::gmodule_export_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GMODULE_EXPORT_2.0_LIB_LIBRARIES}")
set_target_properties(gmodule_export_2.0::gmodule_export_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GMODULE_EXPORT_2.0_CFLAGS_OTHER}")
