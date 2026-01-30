# 2026-01-21T13:10:35.484243370
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisSystolic1")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Zynq_Systolic_Core_AXI_FIFO_Stream/SystolicCore_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="xllfifo_polling_example")
comp.build()

status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

status = platform.build()

comp.build()

