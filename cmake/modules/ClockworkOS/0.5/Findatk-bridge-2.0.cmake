
find_package(PkgConfig REQUIRED)

pkg_check_modules(ATK_BRIDGE_2.0 REQUIRED atk-bridge-2.0)

add_library(atk_bridge_2.0::atk_bridge_2.0 INTERFACE IMPORTED)
set_target_properties(atk_bridge_2.0::atk_bridge_2.0 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ATK_BRIDGE_2.0_INCLUDE_DIRS}")
set_target_properties(atk_bridge_2.0::atk_bridge_2.0 PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ATK_BRIDGE_2.0_LIBRARY_DIRS}")
set_target_properties(atk_bridge_2.0::atk_bridge_2.0 PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ATK_BRIDGE_2.0_LIB_LIBRARIES}")
set_target_properties(atk_bridge_2.0::atk_bridge_2.0 PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ATK_BRIDGE_2.0_CFLAGS_OTHER}")
