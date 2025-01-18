
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XSCRNSAVER REQUIRED xscrnsaver)

add_library(XSCRNSAVER INTERFACE IMPORTED)
set_target_properties(XSCRNSAVER PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XSCRNSAVER_INCLUDE_DIRS}")
set_target_properties(XSCRNSAVER PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XSCRNSAVER_LIBRARY_DIRS}")
set_target_properties(XSCRNSAVER PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XSCRNSAVER_LIB_LIBRARIES}")
set_target_properties(XSCRNSAVER PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XSCRNSAVER_CFLAGS_OTHER}")
