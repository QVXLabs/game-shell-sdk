
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_PDF REQUIRED cairo-pdf)

add_library(cairo_pdf::cairo_pdf INTERFACE IMPORTED)
set_target_properties(cairo_pdf::cairo_pdf PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_PDF_INCLUDE_DIRS}")
set_target_properties(cairo_pdf::cairo_pdf PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_PDF_LIBRARY_DIRS}")
set_target_properties(cairo_pdf::cairo_pdf PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_PDF_LIBRARIES}")
set_target_properties(cairo_pdf::cairo_pdf PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_PDF_CFLAGS_OTHER}")
