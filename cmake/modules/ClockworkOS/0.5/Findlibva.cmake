
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBVA REQUIRED libva)

add_library(libva::libva INTERFACE IMPORTED)
set_target_properties(libva::libva PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBVA_INCLUDE_DIRS}")
set_target_properties(libva::libva PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBVA_LIBRARY_DIRS}")
set_target_properties(libva::libva PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBVA_LIB_LIBRARIES}")
set_target_properties(libva::libva PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBVA_CFLAGS_OTHER}")
