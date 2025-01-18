
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XSHMFENCE REQUIRED xshmfence)

add_library(XSHMFENCE INTERFACE IMPORTED)
set_target_properties(XSHMFENCE PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XSHMFENCE_INCLUDE_DIRS}")
set_target_properties(XSHMFENCE PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XSHMFENCE_LIBRARY_DIRS}")
set_target_properties(XSHMFENCE PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XSHMFENCE_LIB_LIBRARIES}")
set_target_properties(XSHMFENCE PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XSHMFENCE_CFLAGS_OTHER}")
