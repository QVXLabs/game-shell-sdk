
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_TPI REQUIRED libva-tpi)

add_library(LIBVA_TPI INTERFACE IMPORTED)
set_target_properties(LIBVA_TPI PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_TPI_INCLUDE_DIRS}")
set_target_properties(LIBVA_TPI PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_TPI_LIBRARY_DIRS}")
set_target_properties(LIBVA_TPI PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_TPI_LIB_LIBRARIES}")
set_target_properties(LIBVA_TPI PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_TPI_CFLAGS_OTHER}")
