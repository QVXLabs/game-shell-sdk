
find_package(PkgConfig REQUIRED)

pkg_check_modules(XULRUNNER_NSPR REQUIRED xulrunner-nspr)

add_library(xulrunner_nspr::xulrunner_nspr INTERFACE IMPORTED)
set_target_properties(xulrunner_nspr::xulrunner_nspr PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XULRUNNER_NSPR_INCLUDE_DIRS}")
set_target_properties(xulrunner_nspr::xulrunner_nspr PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XULRUNNER_NSPR_LIBRARY_DIRS}")
set_target_properties(xulrunner_nspr::xulrunner_nspr PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XULRUNNER_NSPR_LIB_LIBRARIES}")
set_target_properties(xulrunner_nspr::xulrunner_nspr PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XULRUNNER_NSPR_CFLAGS_OTHER}")
