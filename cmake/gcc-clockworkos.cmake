set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR armv7l)

get_filename_component(
  GAMESHELL_SDK_ROOT "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)
  
set(CMAKE_C_COMPILER "${GAMESHELL_SDK_ROOT}/bin/gcc-clockworkos-0.5")
set(CMAKE_CXX_COMPILER "${GAMESHELL_SDK_ROOT}/bin/g++-clockworkos-0.5")
set(CMAKE_ASM_COMPILER "${GAMESHELL_SDK_ROOT}/bin/as-clockworkos-0.5")
set(CMAKE_AR "${GAMESHELL_SDK_ROOT}/bin/ar-clockworkos-0.5")
set(CMAKE_RANLIB "${GAMESHELL_SDK_ROOT}/bin/ranlib-clockworkos-0.5")

set(DEFAULT_FLAGS "-mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard")
if(CLOCKWORK_ENABLE_THUMB)
  set(DEFAULT_FLAGS "${DEFAULT_FLAGS} -mthumb")
else()
  set(DEFAULT_FLAGS "${DEFAULT_FLAGS} -marm")
endif()
  
set(CMAKE_C_FLAGS "${DEFAULT_FLAGS}")
set(CMAKE_CPP_FLAGS "${DEFAULT_FLAGS}")

# search path for packages
set(ENV{PKG_CONFIG_PATH}
  "${GAMESHELL_SDK_ROOT}/pkgconf/ClockworkOS/0.5")
list(PREPEND
  CMAKE_MODULE_PATH
  "${GAMESHELL_SDK_ROOT}/cmake/modules/ClockworkOS/0.5")

# update rpath for lima drivers
set(CMAKE_BUILD_RPATH "/usr/lib/lima")

