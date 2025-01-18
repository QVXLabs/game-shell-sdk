
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(ISO_CODES REQUIRED iso-codes)

add_library(ISO_CODES INTERFACE IMPORTED)
set_target_properties(ISO_CODES PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ISO_CODES_INCLUDE_DIRS}")
set_target_properties(ISO_CODES PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ISO_CODES_LIBRARY_DIRS}")
set_target_properties(ISO_CODES PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ISO_CODES_LIB_LIBRARIES}")
set_target_properties(ISO_CODES PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ISO_CODES_CFLAGS_OTHER}")
