
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_PDF REQUIRED cairo-pdf)

add_library(CAIRO_PDF INTERFACE IMPORTED)
set_target_properties(CAIRO_PDF PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_PDF_INCLUDE_DIRS}")
set_target_properties(CAIRO_PDF PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_PDF_LIBRARY_DIRS}")
set_target_properties(CAIRO_PDF PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_PDF_LIB_LIBRARIES}")
set_target_properties(CAIRO_PDF PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_PDF_CFLAGS_OTHER}")
