
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(GL REQUIRED gl)

add_library(GL INTERFACE IMPORTED)
set_target_properties(GL PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${GL_INCLUDE_DIRS}")
set_target_properties(GL PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${GL_LIBRARY_DIRS}")
set_target_properties(GL PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${GL_LIB_LIBRARIES}")
set_target_properties(GL PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${GL_CFLAGS_OTHER}")
