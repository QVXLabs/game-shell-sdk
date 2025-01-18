
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(SHARED_MIME_INFO REQUIRED shared-mime-info)

add_library(SHARED_MIME_INFO INTERFACE IMPORTED)
set_target_properties(SHARED_MIME_INFO PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${SHARED_MIME_INFO_INCLUDE_DIRS}")
set_target_properties(SHARED_MIME_INFO PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${SHARED_MIME_INFO_LIBRARY_DIRS}")
set_target_properties(SHARED_MIME_INFO PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${SHARED_MIME_INFO_LIB_LIBRARIES}")
set_target_properties(SHARED_MIME_INFO PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${SHARED_MIME_INFO_CFLAGS_OTHER}")
