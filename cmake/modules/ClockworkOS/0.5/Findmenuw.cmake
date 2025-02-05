
find_package(PkgConfig REQUIRED)

pkg_check_modules(MENUW REQUIRED menuw)

add_library(menuw::menuw INTERFACE IMPORTED)
set_target_properties(menuw::menuw PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${MENUW_INCLUDE_DIRS}")
set_target_properties(menuw::menuw PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${MENUW_LIBRARY_DIRS}")
set_target_properties(menuw::menuw PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${MENUW_LIBRARIES}")
set_target_properties(menuw::menuw PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${MENUW_CFLAGS_OTHER}")
