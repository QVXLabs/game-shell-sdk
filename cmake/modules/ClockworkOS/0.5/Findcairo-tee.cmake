
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_TEE REQUIRED cairo-tee)

add_library(CAIRO_TEE INTERFACE IMPORTED)
set_target_properties(CAIRO_TEE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_TEE_INCLUDE_DIRS}")
set_target_properties(CAIRO_TEE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_TEE_LIBRARY_DIRS}")
set_target_properties(CAIRO_TEE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_TEE_LIB_LIBRARIES}")
set_target_properties(CAIRO_TEE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_TEE_CFLAGS_OTHER}")
