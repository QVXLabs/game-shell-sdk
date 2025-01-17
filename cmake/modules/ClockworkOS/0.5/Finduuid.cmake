
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(UUID REQUIRED uuid)

add_library(UUID INTERFACE IMPORTED)
set_target_properties(UUID PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${UUID_INCLUDE_DIRS}")
set_target_properties(UUID PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${UUID_LIBRARY_DIRS}")
set_target_properties(UUID PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${UUID_LIB_LIBRARIES}")
set_target_properties(UUID PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${UUID_CFLAGS_OTHER}")
