
find_package(PkgConfig REQUIRED)

pkg_check_modules(PTHREAD_STUBS REQUIRED pthread-stubs)

add_library(pthread_stubs::pthread_stubs INTERFACE IMPORTED)
set_target_properties(pthread_stubs::pthread_stubs PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PTHREAD_STUBS_INCLUDE_DIRS}")
set_target_properties(pthread_stubs::pthread_stubs PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PTHREAD_STUBS_LIBRARY_DIRS}")
set_target_properties(pthread_stubs::pthread_stubs PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PTHREAD_STUBS_LIB_LIBRARIES}")
set_target_properties(pthread_stubs::pthread_stubs PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PTHREAD_STUBS_CFLAGS_OTHER}")
