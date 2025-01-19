
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_SCRIPT REQUIRED cairo-script)

add_library(cairo_script::cairo_script INTERFACE IMPORTED)
set_target_properties(cairo_script::cairo_script PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_SCRIPT_INCLUDE_DIRS}")
set_target_properties(cairo_script::cairo_script PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_SCRIPT_LIBRARY_DIRS}")
set_target_properties(cairo_script::cairo_script PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_SCRIPT_LIB_LIBRARIES}")
set_target_properties(cairo_script::cairo_script PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_SCRIPT_CFLAGS_OTHER}")
