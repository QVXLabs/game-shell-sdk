
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBXML_2.0 REQUIRED libxml-2.0)

add_library(LIBXML_2.0 INTERFACE IMPORTED)
set_target_properties(LIBXML_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBXML_2.0_INCLUDE_DIRS}")
set_target_properties(LIBXML_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBXML_2.0_LIBRARY_DIRS}")
set_target_properties(LIBXML_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBXML_2.0_LIB_LIBRARIES}")
set_target_properties(LIBXML_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBXML_2.0_CFLAGS_OTHER}")
