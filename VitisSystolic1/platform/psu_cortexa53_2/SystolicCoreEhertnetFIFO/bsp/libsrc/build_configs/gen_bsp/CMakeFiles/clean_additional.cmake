# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/xmen/aVitisProjetos/FifoAdaptacao04/platform/psu_cortexa53_2/SystolicCoreEhertnetFIFO/bsp/include/lwipopts.h"
  "/home/xmen/aVitisProjetos/FifoAdaptacao04/platform/psu_cortexa53_2/SystolicCoreEhertnetFIFO/bsp/include/sleep.h"
  "/home/xmen/aVitisProjetos/FifoAdaptacao04/platform/psu_cortexa53_2/SystolicCoreEhertnetFIFO/bsp/include/xemac_ieee_reg.h"
  "/home/xmen/aVitisProjetos/FifoAdaptacao04/platform/psu_cortexa53_2/SystolicCoreEhertnetFIFO/bsp/include/xemacpsif_hw.h"
  "/home/xmen/aVitisProjetos/FifoAdaptacao04/platform/psu_cortexa53_2/SystolicCoreEhertnetFIFO/bsp/include/xiltimer.h"
  "/home/xmen/aVitisProjetos/FifoAdaptacao04/platform/psu_cortexa53_2/SystolicCoreEhertnetFIFO/bsp/include/xlwipconfig.h"
  "/home/xmen/aVitisProjetos/FifoAdaptacao04/platform/psu_cortexa53_2/SystolicCoreEhertnetFIFO/bsp/include/xtimer_config.h"
  "/home/xmen/aVitisProjetos/FifoAdaptacao04/platform/psu_cortexa53_2/SystolicCoreEhertnetFIFO/bsp/lib/liblwip220.a"
  "/home/xmen/aVitisProjetos/FifoAdaptacao04/platform/psu_cortexa53_2/SystolicCoreEhertnetFIFO/bsp/lib/libxiltimer.a"
  )
endif()
