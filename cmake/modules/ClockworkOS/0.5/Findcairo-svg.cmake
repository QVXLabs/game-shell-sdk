
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_SVG REQUIRED cairo-svg)

add_library(cairo_svg::cairo_svg INTERFACE IMPORTED)
set_target_properties(cairo_svg::cairo_svg PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_SVG_INCLUDE_DIRS}")
set_target_properties(cairo_svg::cairo_svg PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_SVG_LIBRARY_DIRS}")
set_target_properties(cairo_svg::cairo_svg PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_SVG_LIB_LIBRARIES}")
set_target_properties(cairo_svg::cairo_svg PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_SVG_CFLAGS_OTHER}")
