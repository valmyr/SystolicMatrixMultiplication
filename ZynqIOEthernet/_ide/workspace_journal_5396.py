# 2025-12-31T18:42:41.274991366
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

platform = client.get_component(name="ZyqnIO_EThernet")
status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
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

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

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

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Ethernet_ps/zynq_wrapper_systolic.xsa")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

