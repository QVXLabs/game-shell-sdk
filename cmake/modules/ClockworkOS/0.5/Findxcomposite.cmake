
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCOMPOSITE REQUIRED xcomposite)

add_library(XCOMPOSITE INTERFACE IMPORTED)
set_target_properties(XCOMPOSITE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCOMPOSITE_INCLUDE_DIRS}")
set_target_properties(XCOMPOSITE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCOMPOSITE_LIBRARY_DIRS}")
set_target_properties(XCOMPOSITE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCOMPOSITE_LIB_LIBRARIES}")
set_target_properties(XCOMPOSITE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCOMPOSITE_CFLAGS_OTHER}")
