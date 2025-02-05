
find_package(PkgConfig REQUIRED)

pkg_check_modules(XORG_SGML_DOCTOOLS REQUIRED xorg-sgml-doctools)

add_library(xorg_sgml_doctools::xorg_sgml_doctools INTERFACE IMPORTED)
set_target_properties(xorg_sgml_doctools::xorg_sgml_doctools PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XORG_SGML_DOCTOOLS_INCLUDE_DIRS}")
set_target_properties(xorg_sgml_doctools::xorg_sgml_doctools PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XORG_SGML_DOCTOOLS_LIBRARY_DIRS}")
set_target_properties(xorg_sgml_doctools::xorg_sgml_doctools PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XORG_SGML_DOCTOOLS_LIBRARIES}")
set_target_properties(xorg_sgml_doctools::xorg_sgml_doctools PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XORG_SGML_DOCTOOLS_CFLAGS_OTHER}")
