
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBLZMA REQUIRED liblzma)

add_library(LIBLZMA INTERFACE IMPORTED)
set_target_properties(LIBLZMA PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBLZMA_INCLUDE_DIRS}")
set_target_properties(LIBLZMA PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBLZMA_LIBRARY_DIRS}")
set_target_properties(LIBLZMA PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBLZMA_LIB_LIBRARIES}")
set_target_properties(LIBLZMA PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBLZMA_CFLAGS_OTHER}")
