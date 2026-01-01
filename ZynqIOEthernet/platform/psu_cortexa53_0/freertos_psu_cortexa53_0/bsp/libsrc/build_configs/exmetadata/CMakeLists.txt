
cmake_minimum_required(VERSION 3.15)
project(bsp)

# Use CMAKE_LIBRARY_PATH in link_directories
link_directories(${CMAKE_LIBRARY_PATH})
        
set(DRIVER_TARGETS gpio;scugic;zdma;sysmonpsu;axipmon;canps;coresightps_dcc;resetps;clockps;csudma;ddrcpsu;emacps;gpiops;iicps;ipipsu;rtcpsu;sdps;ttcps;uartps;usbpsu;wdtps)
set(DRIVER_LOCATIONS /home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/gpio_v4_12;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/scugic_v5_6;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/zdma_v1_21;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/sysmonpsu_v3_2;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/axipmon_v6_13;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/canps_v3_11;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/coresightps_dcc_v1_13;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/resetps_v1_7;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/clockps_v1_6;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/csudma_v1_18;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/ddrcpsu_v1_8;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/emacps_v3_23;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/gpiops_v3_14;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/iicps_v3_22;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/ipipsu_v2_18;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/rtcpsu_v1_16;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/sdps_v4_5;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/ttcps_v3_22;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/uartps_v3_17;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/usbpsu_v1_18;/home/xmen/Music/2025.2/Vitis/data/embeddedsw/XilinxProcessorIPLib/drivers/wdtps_v3_8)

list(LENGTH DRIVER_TARGETS no_of_drivers)
set(index 0)

while(${index} LESS ${no_of_drivers})
    list(GET DRIVER_TARGETS ${index} drv)
    list(GET DRIVER_LOCATIONS ${index} drv_dir)
    set(exp_dir "${drv_dir}/examples")
    add_custom_target(
        ${drv}_example ALL
        COMMAND lopper -f -O /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/platform/psu_cortexa53_0/freertos_psu_cortexa53_0/bsp/libsrc/${drv} /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/ZynqIOEthernet/platform/psu_cortexa53_0/freertos_psu_cortexa53_0/bsp/hw_artifacts/psu_cortexa53_0_baremetal.dts -- bmcmake_metadata_xlnx psu_cortexa53_0 ${exp_dir} drvcmake_metadata
        BYPRODUCTS x${drv}_exlist.yaml)
    MATH(EXPR index "${index}+1")
endwhile()
