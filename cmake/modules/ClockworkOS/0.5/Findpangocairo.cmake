
find_package(PkgConfig REQUIRED)

pkg_check_modules(PANGOCAIRO REQUIRED pangocairo)

add_library(pangocairo::pangocairo INTERFACE IMPORTED)
set_target_properties(pangocairo::pangocairo PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PANGOCAIRO_INCLUDE_DIRS}")
set_target_properties(pangocairo::pangocairo PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PANGOCAIRO_LIBRARY_DIRS}")
set_target_properties(pangocairo::pangocairo PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PANGOCAIRO_LIBRARIES}")
set_target_properties(pangocairo::pangocairo PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PANGOCAIRO_CFLAGS_OTHER}")
