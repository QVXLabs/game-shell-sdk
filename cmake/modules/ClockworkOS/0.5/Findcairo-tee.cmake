
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_TEE REQUIRED cairo-tee)

add_library(cairo_tee::cairo_tee INTERFACE IMPORTED)
set_target_properties(cairo_tee::cairo_tee PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_TEE_INCLUDE_DIRS}")
set_target_properties(cairo_tee::cairo_tee PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_TEE_LIBRARY_DIRS}")
set_target_properties(cairo_tee::cairo_tee PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_TEE_LIBRARIES}")
set_target_properties(cairo_tee::cairo_tee PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_TEE_CFLAGS_OTHER}")
