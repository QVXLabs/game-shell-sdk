
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PTHREAD_STUBS REQUIRED pthread-stubs)

add_library(PTHREAD_STUBS INTERFACE IMPORTED)
set_target_properties(PTHREAD_STUBS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PTHREAD_STUBS_INCLUDE_DIRS}")
set_target_properties(PTHREAD_STUBS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PTHREAD_STUBS_LIBRARY_DIRS}")
set_target_properties(PTHREAD_STUBS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PTHREAD_STUBS_LIB_LIBRARIES}")
set_target_properties(PTHREAD_STUBS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PTHREAD_STUBS_CFLAGS_OTHER}")
