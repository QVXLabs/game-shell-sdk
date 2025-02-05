
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA_TPI REQUIRED libva-tpi)

add_library(libva_tpi::libva_tpi INTERFACE IMPORTED)
set_target_properties(libva_tpi::libva_tpi PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_TPI_INCLUDE_DIRS}")
set_target_properties(libva_tpi::libva_tpi PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_TPI_LIBRARY_DIRS}")
set_target_properties(libva_tpi::libva_tpi PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_TPI_LIBRARIES}")
set_target_properties(libva_tpi::libva_tpi PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_TPI_CFLAGS_OTHER}")
