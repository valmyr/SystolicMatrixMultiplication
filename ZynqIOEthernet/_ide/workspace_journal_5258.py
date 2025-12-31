# 2025-12-23T18:57:11.854348053
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

platform = client.get_component(name="ZyqnIO_EThernet")
status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper_fifo_test.xsa")

comp = client.create_aie_component(name="StreamSwitchFIFO", platform = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper_fifo_test.xsa", template = "installed_aie_examples/StreamSwitchFIFO")

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.6/platform"])

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.6"])

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.6"])

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.6/platform"])

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.6/platform"])

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.6/platform/export/platform"])

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.6/platform/hw"])

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.6/platform/export/platform/hw"])

comp = client.create_aie_component(name="StreamSwitchFIFO", platform = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper_fifo_test.xsa", template = "installed_aie_examples/StreamSwitchFIFO")

comp = client.create_aie_component(name="StreamSwitchFIFO", platform = "$COMPONENT_LOCATION/../../../Music/2025.2/Vitis/base_platforms/vrk160_base/vrk160_base.xpfm", template = "installed_aie_examples/StreamSwitchFIFO")

comp = client.get_component(name="StreamSwitchFIFO")
comp.build(target="x86sim")

client.delete_component(name="StreamSwitchFIFO")

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.4"])

status = client.add_platform_repos(platform=["/home/xmen/Music/2025.2/data/boards/zcu106/2.4"])

vitis.dispose()

