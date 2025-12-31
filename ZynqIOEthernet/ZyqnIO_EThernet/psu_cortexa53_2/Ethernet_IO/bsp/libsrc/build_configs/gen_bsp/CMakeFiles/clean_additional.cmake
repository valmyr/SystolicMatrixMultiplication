# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/Ethernet_IO/bsp/include/lwipopts.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/Ethernet_IO/bsp/include/sleep.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/Ethernet_IO/bsp/include/xemac_ieee_reg.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/Ethernet_IO/bsp/include/xemacpsif_hw.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/Ethernet_IO/bsp/include/xiltimer.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/Ethernet_IO/bsp/include/xlwipconfig.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/Ethernet_IO/bsp/include/xtimer_config.h"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/Ethernet_IO/bsp/lib/liblwip220.a"
  "/home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/ZyqnIO_EThernet/psu_cortexa53_2/Ethernet_IO/bsp/lib/libxiltimer.a"
  )
endif()
