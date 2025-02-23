set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR armv7l)

get_filename_component(
  GAMESHELL_SDK_ROOT "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)

set(COMPILER_ROOT "${GAMESHELL_SDK_ROOT}/gcc/bin")
set(CMAKE_C_COMPILER "${COMPILER_ROOT}/arm-linux-gnueabihf-gcc")
set(CMAKE_CXX_COMPILER "${COMPILER_ROOT}/arm-linux-gnueabihf-g++")
set(CMAKE_ASM_COMPILER "${COMPILER_ROOT}/arm-linux-gnueabihf-as")
set(CMAKE_AR "${COMPILER_ROOT}/arm-linux-gnueabihf-ar")
set(CMAKE_RANLIB "${COMPILER_ROOT}/arm-linux-gnueabihf-ranlib")
# set(CMAKE_C_LINK_EXECUTABLE "${COMPILER_ROOT}/arm-linux-gnueabihf-ld")
# set(CMAKE_CXX_LINK_EXECUTABLE "${COMPILER_ROOT}/arm-linux-gnueabihf-ld")

set(DEFAULT_FLAGS "-mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard")
if(CLOCKWORK_ENABLE_THUMB)
  set(DEFAULT_FLAGS "${DEFAULT_FLAGS} -mthumb")
else()
  set(DEFAULT_FLAGS "${DEFAULT_FLAGS} -marm")
endif()
  
set(CMAKE_C_FLAGS "${DEFAULT_FLAGS}")
set(CMAKE_CPP_FLAGS "${DEFAULT_FLAGS}")

# search path for packages & sysroot
set(ENV{PKG_CONFIG_SYSROOT_DIR}
  "${GAMESHELL_SDK_ROOT}/sysroot/ClockworkOS/0.5")
set(ENV{PKG_CONFIG_PATH}
  "${GAMESHELL_SDK_ROOT}/pkgconf/ClockworkOS/0.5")
list(PREPEND
  CMAKE_MODULE_PATH
  "${GAMESHELL_SDK_ROOT}/cmake/modules/ClockworkOS/0.5")

# update rpath for lima drivers
#set(CMAKE_BUILD_RPATH "/usr/lib/lima")

