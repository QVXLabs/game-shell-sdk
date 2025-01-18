
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(BLAS REQUIRED blas)

add_library(BLAS INTERFACE IMPORTED)
set_target_properties(BLAS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${BLAS_INCLUDE_DIRS}")
set_target_properties(BLAS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${BLAS_LIBRARY_DIRS}")
set_target_properties(BLAS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${BLAS_LIB_LIBRARIES}")
set_target_properties(BLAS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${BLAS_CFLAGS_OTHER}")
