
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPULSE_MAINLOOP_GLIB REQUIRED libpulse-mainloop-glib)

add_library(libpulse_mainloop_glib::libpulse_mainloop_glib INTERFACE IMPORTED)
set_target_properties(libpulse_mainloop_glib::libpulse_mainloop_glib PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPULSE_MAINLOOP_GLIB_INCLUDE_DIRS}")
set_target_properties(libpulse_mainloop_glib::libpulse_mainloop_glib PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPULSE_MAINLOOP_GLIB_LIBRARY_DIRS}")
set_target_properties(libpulse_mainloop_glib::libpulse_mainloop_glib PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPULSE_MAINLOOP_GLIB_LIBRARIES}")
set_target_properties(libpulse_mainloop_glib::libpulse_mainloop_glib PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPULSE_MAINLOOP_GLIB_CFLAGS_OTHER}")
