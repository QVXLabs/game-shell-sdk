
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(PORTAUDIOCPP REQUIRED portaudiocpp)

add_library(PORTAUDIOCPP INTERFACE IMPORTED)
set_target_properties(PORTAUDIOCPP PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${PORTAUDIOCPP_INCLUDE_DIRS}")
set_target_properties(PORTAUDIOCPP PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${PORTAUDIOCPP_LIBRARY_DIRS}")
set_target_properties(PORTAUDIOCPP PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${PORTAUDIOCPP_LIB_LIBRARIES}")
set_target_properties(PORTAUDIOCPP PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${PORTAUDIOCPP_CFLAGS_OTHER}")
