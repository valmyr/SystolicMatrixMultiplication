# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/clone/psu_cortexa53_0/freertos_psu_cortexa53_0/bsp/include/sleep.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/clone/psu_cortexa53_0/freertos_psu_cortexa53_0/bsp/include/xiltimer.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/clone/psu_cortexa53_0/freertos_psu_cortexa53_0/bsp/include/xtimer_config.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/clone/psu_cortexa53_0/freertos_psu_cortexa53_0/bsp/lib/libxiltimer.a"
  )
endif()
