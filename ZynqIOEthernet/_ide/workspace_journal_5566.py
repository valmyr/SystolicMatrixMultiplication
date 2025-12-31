# 2025-12-21T11:14:43.049062763
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

platform = client.get_component(name="ZyqnIO_EThernet")
status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

domain = platform.get_domain(name="Ethernet_IO")

status = domain.set_config(option = "lib", param = "lwip220_dhcp", value = "false", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_lwip_dhcp_does_acd_check", value = "false", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_dhcp_options", value = "false", lib_name="lwip220")

status = platform.build()

comp.build()

