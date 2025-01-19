
find_package(PkgConfig REQUIRED)

pkg_check_modules(ADWAITA_ICON_THEME REQUIRED adwaita-icon-theme)

add_library(adwaita_icon_theme::adwaita_icon_theme INTERFACE IMPORTED)
set_target_properties(adwaita_icon_theme::adwaita_icon_theme PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${ADWAITA_ICON_THEME_INCLUDE_DIRS}")
set_target_properties(adwaita_icon_theme::adwaita_icon_theme PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${ADWAITA_ICON_THEME_LIBRARY_DIRS}")
set_target_properties(adwaita_icon_theme::adwaita_icon_theme PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${ADWAITA_ICON_THEME_LIB_LIBRARIES}")
set_target_properties(adwaita_icon_theme::adwaita_icon_theme PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${ADWAITA_ICON_THEME_CFLAGS_OTHER}")
