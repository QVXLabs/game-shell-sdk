
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(SLANG REQUIRED slang)

add_library(SLANG INTERFACE IMPORTED)
set_target_properties(SLANG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SLANG_INCLUDE_DIRS}")
set_target_properties(SLANG PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SLANG_LIBRARY_DIRS}")
set_target_properties(SLANG PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SLANG_LIB_LIBRARIES}")
set_target_properties(SLANG PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SLANG_CFLAGS_OTHER}")
