
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBPCRE16 REQUIRED libpcre16)

add_library(LIBPCRE16 INTERFACE IMPORTED)
set_target_properties(LIBPCRE16 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBPCRE16_INCLUDE_DIRS}")
set_target_properties(LIBPCRE16 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBPCRE16_LIBRARY_DIRS}")
set_target_properties(LIBPCRE16 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBPCRE16_LIB_LIBRARIES}")
set_target_properties(LIBPCRE16 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBPCRE16_CFLAGS_OTHER}")
