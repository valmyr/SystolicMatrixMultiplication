# 2025-12-24T21:22:27.504306484
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

platform = client.get_component(name="ZyqnIO_EThernet")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper_fifo_test.xsa")

status = client.set_embedded_sw_repo(level="LOCAL", path=["/home/xmen/Videos/embeddedsw"])

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="xllfifo_polling_example")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="xllfifo_polling_example_1")
comp.build()

status = platform.build()

comp = client.get_component(name="xllfifo_polling_example")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="xllfifo_polling_example_1")
comp.build()

status = platform.build()

comp = client.get_component(name="xllfifo_polling_example")
comp.build()

client.delete_component(name="xllfifo_polling_example_1")

client.delete_component(name="componentName")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper.xsa")

status = platform.build()

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

client.delete_component(name="xllfifo_polling_example")

client.delete_component(name="componentName")

status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

