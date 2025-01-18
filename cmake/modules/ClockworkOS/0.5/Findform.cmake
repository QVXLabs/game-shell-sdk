
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(FORM REQUIRED form)

add_library(FORM INTERFACE IMPORTED)
set_target_properties(FORM PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${FORM_INCLUDE_DIRS}")
set_target_properties(FORM PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${FORM_LIBRARY_DIRS}")
set_target_properties(FORM PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${FORM_LIB_LIBRARIES}")
set_target_properties(FORM PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${FORM_CFLAGS_OTHER}")
