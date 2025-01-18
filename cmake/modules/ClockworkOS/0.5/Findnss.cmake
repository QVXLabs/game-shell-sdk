
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(NSS REQUIRED nss)

add_library(NSS INTERFACE IMPORTED)
set_target_properties(NSS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${NSS_INCLUDE_DIRS}")
set_target_properties(NSS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${NSS_LIBRARY_DIRS}")
set_target_properties(NSS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${NSS_LIB_LIBRARIES}")
set_target_properties(NSS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${NSS_CFLAGS_OTHER}")
