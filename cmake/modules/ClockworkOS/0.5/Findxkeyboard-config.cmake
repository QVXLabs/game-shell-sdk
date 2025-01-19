
find_package(PkgConfig REQUIRED)

pkg_check_modules(XKEYBOARD_CONFIG REQUIRED xkeyboard-config)

add_library(xkeyboard_config::xkeyboard_config INTERFACE IMPORTED)
set_target_properties(xkeyboard_config::xkeyboard_config PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${XKEYBOARD_CONFIG_INCLUDE_DIRS}")
set_target_properties(xkeyboard_config::xkeyboard_config PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${XKEYBOARD_CONFIG_LIBRARY_DIRS}")
set_target_properties(xkeyboard_config::xkeyboard_config PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${XKEYBOARD_CONFIG_LIB_LIBRARIES}")
set_target_properties(xkeyboard_config::xkeyboard_config PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${XKEYBOARD_CONFIG_CFLAGS_OTHER}")
