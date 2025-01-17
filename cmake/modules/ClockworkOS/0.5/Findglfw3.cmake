
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GLFW3 REQUIRED glfw3)

add_library(GLFW3 INTERFACE IMPORTED)
set_target_properties(GLFW3 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GLFW3_INCLUDE_DIRS}")
set_target_properties(GLFW3 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GLFW3_LIBRARY_DIRS}")
set_target_properties(GLFW3 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GLFW3_LIB_LIBRARIES}")
set_target_properties(GLFW3 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GLFW3_CFLAGS_OTHER}")
