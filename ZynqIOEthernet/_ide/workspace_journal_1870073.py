# 2025-12-27T22:30:23.303918592
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

platform = client.get_component(name="ZyqnIO_EThernet")
status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="xgpio_example")
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

client.delete_component(name="xgpio_low_level_example")

client.delete_component(name="componentName")

client.delete_component(name="xgpio_tapp_example")

client.delete_component(name="componentName")

client.delete_component(name="xgpio_example")

client.delete_component(name="componentName")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

