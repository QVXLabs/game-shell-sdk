
find_package(PkgConfig REQUIRED)

pkg_check_modules(ICU_IO REQUIRED icu-io)

add_library(icu_io::icu_io INTERFACE IMPORTED)
set_target_properties(icu_io::icu_io PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ICU_IO_INCLUDE_DIRS}")
set_target_properties(icu_io::icu_io PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ICU_IO_LIBRARY_DIRS}")
set_target_properties(icu_io::icu_io PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ICU_IO_LIBRARIES}")
set_target_properties(icu_io::icu_io PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ICU_IO_CFLAGS_OTHER}")
