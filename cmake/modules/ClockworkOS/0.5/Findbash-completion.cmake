
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(BASH_COMPLETION REQUIRED bash-completion)

add_library(BASH_COMPLETION INTERFACE IMPORTED)
set_target_properties(BASH_COMPLETION PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${BASH_COMPLETION_INCLUDE_DIRS}")
set_target_properties(BASH_COMPLETION PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${BASH_COMPLETION_LIBRARY_DIRS}")
set_target_properties(BASH_COMPLETION PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${BASH_COMPLETION_LIB_LIBRARIES}")
set_target_properties(BASH_COMPLETION PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${BASH_COMPLETION_CFLAGS_OTHER}")
