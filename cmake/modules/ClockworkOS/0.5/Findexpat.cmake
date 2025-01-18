
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(EXPAT REQUIRED expat)

add_library(EXPAT INTERFACE IMPORTED)
set_target_properties(EXPAT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${EXPAT_INCLUDE_DIRS}")
set_target_properties(EXPAT PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${EXPAT_LIBRARY_DIRS}")
set_target_properties(EXPAT PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${EXPAT_LIB_LIBRARIES}")
set_target_properties(EXPAT PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${EXPAT_CFLAGS_OTHER}")
