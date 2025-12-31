# 2025-12-19T11:50:27.432582556
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

platform = client.create_platform_component(name = "ZyqnIO_EThernet",hw_design = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper.xsa",os = "freertos",cpu = "psu_cortexa53_0",domain_name = "freertos_psu_cortexa53_0",architecture = "64-bit")

platform = client.get_component(name="ZyqnIO_EThernet")
domain = platform.add_domain(cpu = "psu_cortexa53_2",os = "freertos",name = "Ethernet_IO",display_name = "Ethernet_IO",support_app = "freertos_lwip_echo_server",generate_dtb = False,hw_boot_bin = "")

comp = client.create_app_component(name="freertos_lwip_echo_server",platform = "$COMPONENT_LOCATION/../ZyqnIO_EThernet/export/ZyqnIO_EThernet/ZyqnIO_EThernet.xpfm",domain = "Ethernet_IO",template = "freertos_lwip_echo_server")

status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

