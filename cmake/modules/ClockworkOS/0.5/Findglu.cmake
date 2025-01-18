
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLU REQUIRED glu)

add_library(GLU INTERFACE IMPORTED)
set_target_properties(GLU PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLU_INCLUDE_DIRS}")
set_target_properties(GLU PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLU_LIBRARY_DIRS}")
set_target_properties(GLU PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLU_LIB_LIBRARIES}")
set_target_properties(GLU PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLU_CFLAGS_OTHER}")
