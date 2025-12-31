# 2025-12-31T00:39:59.494046110
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

platform = client.get_component(name="ZyqnIO_EThernet")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

comp.build()

status = platform.delete_domain(name="aaa")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

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

