
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XULRUNNER_NSS REQUIRED xulrunner-nss)

add_library(XULRUNNER_NSS INTERFACE IMPORTED)
set_target_properties(XULRUNNER_NSS PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XULRUNNER_NSS_INCLUDE_DIRS}")
set_target_properties(XULRUNNER_NSS PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XULRUNNER_NSS_LIBRARY_DIRS}")
set_target_properties(XULRUNNER_NSS PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XULRUNNER_NSS_LIB_LIBRARIES}")
set_target_properties(XULRUNNER_NSS PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XULRUNNER_NSS_CFLAGS_OTHER}")
