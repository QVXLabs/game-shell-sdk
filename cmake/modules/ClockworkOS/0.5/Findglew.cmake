
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLEW REQUIRED glew)

add_library(GLEW INTERFACE IMPORTED)
set_target_properties(GLEW PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLEW_INCLUDE_DIRS}")
set_target_properties(GLEW PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLEW_LIBRARY_DIRS}")
set_target_properties(GLEW PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLEW_LIB_LIBRARIES}")
set_target_properties(GLEW PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLEW_CFLAGS_OTHER}")
