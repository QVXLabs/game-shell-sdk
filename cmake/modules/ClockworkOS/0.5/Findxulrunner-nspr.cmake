
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(XULRUNNER_NSPR REQUIRED xulrunner-nspr)

add_library(XULRUNNER_NSPR INTERFACE IMPORTED)
set_target_properties(XULRUNNER_NSPR PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XULRUNNER_NSPR_INCLUDE_DIRS}")
set_target_properties(XULRUNNER_NSPR PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XULRUNNER_NSPR_LIBRARY_DIRS}")
set_target_properties(XULRUNNER_NSPR PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XULRUNNER_NSPR_LIB_LIBRARIES}")
set_target_properties(XULRUNNER_NSPR PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XULRUNNER_NSPR_CFLAGS_OTHER}")
