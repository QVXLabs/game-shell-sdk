
set(ENV{PKG_CONFIG_PATH} "/Users/afalls/code/game-shell-sdk/pkgconf/ClockworkOS/0.5")
find_package(PkgConfig REQUIRED)

pkg_check_modules(LIBDRM_AMDGPU REQUIRED libdrm_amdgpu)

add_library(LIBDRM_AMDGPU INTERFACE IMPORTED)
set_target_properties(LIBDRM_AMDGPU PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${LIBDRM_AMDGPU_INCLUDE_DIRS}")
set_target_properties(LIBDRM_AMDGPU PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${LIBDRM_AMDGPU_LIBRARY_DIRS}")
set_target_properties(LIBDRM_AMDGPU PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${LIBDRM_AMDGPU_LIB_LIBRARIES}")
set_target_properties(LIBDRM_AMDGPU PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${LIBDRM_AMDGPU_CFLAGS_OTHER}")
