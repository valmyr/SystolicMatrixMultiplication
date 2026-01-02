# 2026-01-01T22:16:11.002836603
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisSystolic1")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../../Videos/RustDesk/SystolicCore/SystolicCore/Ethernet_ps/design_1_wrapper.xsa",os = "freertos",cpu = "psu_cortexa53_0",domain_name = "freertos_psu_cortexa53_0",architecture = "64-bit")

platform = client.get_component(name="platform")
domain = platform.get_domain(name="zynqmp_fsbl")

status = domain.set_lib(lib_name="lwip220", path="$COMPONENT_LOCATION/../../../Music/2025.2/data/embeddedsw/ThirdParty/sw_services/lwip220_v1_3")

domain = platform.get_domain(name="freertos_psu_cortexa53_0")

status = domain.set_lib(lib_name="lwip220", path="$COMPONENT_LOCATION/../../../Music/2025.2/data/embeddedsw/ThirdParty/sw_services/lwip220_v1_3")

status = domain.regenerate()

domain = platform.add_domain(cpu = "psu_cortexa53_2",os = "freertos",name = "SystolicVitis",display_name = "SystolicVitis",support_app = "freertos_lwip_echo_server",generate_dtb = False,hw_boot_bin = "")

comp = client.create_app_component(name="freertos_lwip_echo_server",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "SystolicVitis",template = "freertos_lwip_echo_server")

domain = platform.get_domain(name="SystolicVitis")

status = domain.set_config(option = "lib", param = "lwip220_dhcp", value = "false", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_dhcp_options", value = "false", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_lwip_dhcp_does_acd_check", value = "false", lib_name="lwip220")

status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

status = platform.build()

status = platform.build()

client.delete_component(name="platform")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../../Videos/RustDesk/SystolicCore/SystolicCore/Ethernet_ps/design_1_wrapper.xsa",os = "freertos",cpu = "psu_cortexa53_0",domain_name = "freertos_psu_cortexa53_0",architecture = "64-bit")

domain = platform.get_domain(name="freertos_psu_cortexa53_0")

status = domain.set_lib(lib_name="lwip220", path="$COMPONENT_LOCATION/../../../Music/2025.2/data/embeddedsw/ThirdParty/sw_services/lwip220_v1_3")

domain = platform.get_domain(name="zynqmp_fsbl")

status = domain.set_lib(lib_name="lwip220", path="$COMPONENT_LOCATION/../../../Music/2025.2/data/embeddedsw/ThirdParty/sw_services/lwip220_v1_3")

status = platform.build()

platform.retarget_fsbl(target_processor="psu_cortexr5_0",domain_name="zynqmp_fsbl")

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="freertos_lwip_echo_server")

client.delete_component(name="componentName")

client.delete_component(name="platform")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../../Videos/RustDesk/SystolicCore/SystolicCore/Ethernet_ps/design_1_wrapper.xsa",os = "freertos",cpu = "psu_cortexa53_0",domain_name = "freertos_psu_cortexa53_0",architecture = "64-bit")

domain = platform.add_domain(cpu = "psu_cortexa53_2",os = "freertos",name = "SystolicVitis01",display_name = "SystolicVitis01",support_app = "freertos_lwip_echo_server",generate_dtb = False,hw_boot_bin = "")

comp = client.create_app_component(name="freertos_lwip_echo_server",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "SystolicVitis01",template = "freertos_lwip_echo_server")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

domain = platform.get_domain(name="SystolicVitis01")

status = domain.set_config(option = "lib", param = "lwip220_dhcp", value = "false", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_dhcp_options", value = "false", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_lwip_dhcp_does_acd_check", value = "false", lib_name="lwip220")

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Videos/RustDesk/SystolicCore/SystolicCore/Ethernet_ps/design_1_wrapper.xsa")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

