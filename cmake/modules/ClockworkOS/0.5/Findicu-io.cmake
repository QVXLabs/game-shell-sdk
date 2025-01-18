
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_IO REQUIRED icu-io)

add_library(ICU_IO INTERFACE IMPORTED)
set_target_properties(ICU_IO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_IO_INCLUDE_DIRS}")
set_target_properties(ICU_IO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_IO_LIBRARY_DIRS}")
set_target_properties(ICU_IO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_IO_LIB_LIBRARIES}")
set_target_properties(ICU_IO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_IO_CFLAGS_OTHER}")
