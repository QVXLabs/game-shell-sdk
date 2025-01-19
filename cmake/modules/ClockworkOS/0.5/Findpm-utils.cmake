
find_package(PkgConfig REQUIRED)

pkg_check_modules(PM_UTILS REQUIRED pm-utils)

add_library(pm_utils::pm_utils INTERFACE IMPORTED)
set_target_properties(pm_utils::pm_utils PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PM_UTILS_INCLUDE_DIRS}")
set_target_properties(pm_utils::pm_utils PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PM_UTILS_LIBRARY_DIRS}")
set_target_properties(pm_utils::pm_utils PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PM_UTILS_LIB_LIBRARIES}")
set_target_properties(pm_utils::pm_utils PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PM_UTILS_CFLAGS_OTHER}")
