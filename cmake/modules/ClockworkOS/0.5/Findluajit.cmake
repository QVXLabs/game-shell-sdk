
find_package(PkgConfig REQUIRED)

pkg_check_modules(LUAJIT REQUIRED luajit)

add_library(luajit::luajit INTERFACE IMPORTED)
set_target_properties(luajit::luajit PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LUAJIT_INCLUDE_DIRS}")
set_target_properties(luajit::luajit PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LUAJIT_LIBRARY_DIRS}")
set_target_properties(luajit::luajit PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LUAJIT_LIB_LIBRARIES}")
set_target_properties(luajit::luajit PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LUAJIT_CFLAGS_OTHER}")
