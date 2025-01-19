
find_package(PkgConfig REQUIRED)

pkg_check_modules(XCB_SHM REQUIRED xcb-shm)

add_library(xcb_shm::xcb_shm INTERFACE IMPORTED)
set_target_properties(xcb_shm::xcb_shm PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XCB_SHM_INCLUDE_DIRS}")
set_target_properties(xcb_shm::xcb_shm PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XCB_SHM_LIBRARY_DIRS}")
set_target_properties(xcb_shm::xcb_shm PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XCB_SHM_LIB_LIBRARIES}")
set_target_properties(xcb_shm::xcb_shm PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XCB_SHM_CFLAGS_OTHER}")
