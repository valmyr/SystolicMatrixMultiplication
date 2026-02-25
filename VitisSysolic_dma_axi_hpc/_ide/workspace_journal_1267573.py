# 2026-02-20T16:50:01.425118729
import vitis

client = vitis.create_client()
client.set_workspace(path="dma_test2")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../../Videos/RustDesk/SystolicCore/SystolicCore_Metricas/Zynq_Systolic_Core_AXI_FIFO_Stream_Reboot/teste_dma_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0",architecture = "64-bit",compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="xaxidma_example_simple_poll")
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

vitis.dispose()

