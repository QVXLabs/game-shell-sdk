
find_package(PkgConfig REQUIRED)

pkg_check_modules(XULRUNNER_NSS REQUIRED xulrunner-nss)

add_library(xulrunner_nss::xulrunner_nss INTERFACE IMPORTED)
set_target_properties(xulrunner_nss::xulrunner_nss PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XULRUNNER_NSS_INCLUDE_DIRS}")
set_target_properties(xulrunner_nss::xulrunner_nss PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XULRUNNER_NSS_LIBRARY_DIRS}")
set_target_properties(xulrunner_nss::xulrunner_nss PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XULRUNNER_NSS_LIB_LIBRARIES}")
set_target_properties(xulrunner_nss::xulrunner_nss PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XULRUNNER_NSS_CFLAGS_OTHER}")
