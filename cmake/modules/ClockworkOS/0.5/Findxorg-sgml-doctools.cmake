
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XORG_SGML_DOCTOOLS REQUIRED xorg-sgml-doctools)

add_library(XORG_SGML_DOCTOOLS INTERFACE IMPORTED)
set_target_properties(XORG_SGML_DOCTOOLS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XORG_SGML_DOCTOOLS_INCLUDE_DIRS}")
set_target_properties(XORG_SGML_DOCTOOLS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XORG_SGML_DOCTOOLS_LIBRARY_DIRS}")
set_target_properties(XORG_SGML_DOCTOOLS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XORG_SGML_DOCTOOLS_LIB_LIBRARIES}")
set_target_properties(XORG_SGML_DOCTOOLS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XORG_SGML_DOCTOOLS_CFLAGS_OTHER}")
