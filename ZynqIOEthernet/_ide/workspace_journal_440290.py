# 2025-12-24T21:14:01.144788136
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

comp = client.create_aie_component(name="StreamSwitchFIFO", platform = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper_fifo_test.xsa", template = "installed_aie_examples/StreamSwitchFIFO")

platform = client.get_component(name="ZyqnIO_EThernet")
status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.6"])

vitis.dispose()

