
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(OGG REQUIRED ogg)

add_library(OGG INTERFACE IMPORTED)
set_target_properties(OGG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${OGG_INCLUDE_DIRS}")
set_target_properties(OGG PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${OGG_LIBRARY_DIRS}")
set_target_properties(OGG PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${OGG_LIB_LIBRARIES}")
set_target_properties(OGG PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${OGG_CFLAGS_OTHER}")
