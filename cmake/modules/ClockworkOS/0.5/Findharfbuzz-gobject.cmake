
find_package(PkgConfig REQUIRED)

pkg_check_modules(HARFBUZZ_GOBJECT REQUIRED harfbuzz-gobject)

add_library(harfbuzz_gobject::harfbuzz_gobject INTERFACE IMPORTED)
set_target_properties(harfbuzz_gobject::harfbuzz_gobject PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${HARFBUZZ_GOBJECT_INCLUDE_DIRS}")
set_target_properties(harfbuzz_gobject::harfbuzz_gobject PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${HARFBUZZ_GOBJECT_LIBRARY_DIRS}")
set_target_properties(harfbuzz_gobject::harfbuzz_gobject PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${HARFBUZZ_GOBJECT_LIBRARIES}")
set_target_properties(harfbuzz_gobject::harfbuzz_gobject PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${HARFBUZZ_GOBJECT_CFLAGS_OTHER}")
