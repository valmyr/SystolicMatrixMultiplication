# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/xmen/Desktop/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/aaa/bsp/include/sleep.h"
  "/home/xmen/Desktop/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/aaa/bsp/include/xiltimer.h"
  "/home/xmen/Desktop/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/aaa/bsp/include/xtimer_config.h"
  "/home/xmen/Desktop/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/aaa/bsp/lib/libxiltimer.a"
  )
endif()
