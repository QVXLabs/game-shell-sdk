
find_package(PkgConfig REQUIRED)

pkg_check_modules(GMODULE_NO_EXPORT_2.0 REQUIRED gmodule-no-export-2.0)

add_library(gmodule_no_export_2.0::gmodule_no_export_2.0 INTERFACE IMPORTED)
set_target_properties(gmodule_no_export_2.0::gmodule_no_export_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GMODULE_NO_EXPORT_2.0_INCLUDE_DIRS}")
set_target_properties(gmodule_no_export_2.0::gmodule_no_export_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GMODULE_NO_EXPORT_2.0_LIBRARY_DIRS}")
set_target_properties(gmodule_no_export_2.0::gmodule_no_export_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GMODULE_NO_EXPORT_2.0_LIBRARIES}")
set_target_properties(gmodule_no_export_2.0::gmodule_no_export_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GMODULE_NO_EXPORT_2.0_CFLAGS_OTHER}")
