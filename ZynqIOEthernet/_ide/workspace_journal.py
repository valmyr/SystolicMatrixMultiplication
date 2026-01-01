# 2025-12-31T23:37:28.278099216
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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.clone_component(name="ZyqnIO_EThernet",new_name="clone")

platform = client.get_component(name="clone")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

platform = client.get_component(name="ZyqnIO_EThernet")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

platform = client.get_component(name="clone")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

platform = client.get_component(name="ZyqnIO_EThernet")
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

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

