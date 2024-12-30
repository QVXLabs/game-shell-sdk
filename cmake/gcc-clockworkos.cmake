set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR armv7l)

get_filename_component(
  GAMESHELL_SDK_ROOT "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)
  
set(CMAKE_C_COMPILER "${GAMESHELL_SDK_ROOT}/bin/gcc-clockworkos-0.5")
set(CMAKE_CXX_COMPILER "${GAMESHELL_SDK_ROOT}/bin/g++-clockworkos-0.5")
set(CMAKE_ASM_COMPILER "${GAMESHELL_SDK_ROOT}/bin/as-clockworkos-0.5")

set(DEFAULT_FLAGS "-mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard")
if(CLOCKWORK_ENABLE_THUMB)
  set(DEFAULT_FLAGS "${DEFAULT_FLAGS} -mthumb")
else()
  set(DEFAULT_FLAGS "${DEFAULT_FLAGS} -marm")
endif()
  
set(CMAKE_C_FLAGS "${DEFAULT_FLAGS}")
set(CMAKE_CPP_FLAGS "${DEFAULT_FLAGS}")
