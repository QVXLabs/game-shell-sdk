
find_package(PkgConfig REQUIRED)

pkg_check_modules(CAIRO_XCB_SHM REQUIRED cairo-xcb-shm)

add_library(cairo_xcb_shm::cairo_xcb_shm INTERFACE IMPORTED)
set_target_properties(cairo_xcb_shm::cairo_xcb_shm PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${CAIRO_XCB_SHM_INCLUDE_DIRS}")
set_target_properties(cairo_xcb_shm::cairo_xcb_shm PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${CAIRO_XCB_SHM_LIBRARY_DIRS}")
set_target_properties(cairo_xcb_shm::cairo_xcb_shm PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${CAIRO_XCB_SHM_LIBRARIES}")
set_target_properties(cairo_xcb_shm::cairo_xcb_shm PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${CAIRO_XCB_SHM_CFLAGS_OTHER}")
