# 2026-02-13T18:50:35.361877851
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisSystolic1")

platform = client.get_component(name="platform")
domain = platform.add_domain(cpu = "psu_cortexa53_2",os = "standalone",name = "fsbl",display_name = "fsbl",support_app = "zynqmp_fsbl",generate_dtb = False,hw_boot_bin = "")

comp = client.create_app_component(name="zynqmp_fsbl",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "fsbl",template = "zynqmp_fsbl")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform_a",hw_design = "$COMPONENT_LOCATION/../../../SystolicCore_Metricas/Zynq_Systolic_Core_AXI_FIFO_Stream/SystolicCore_wrapper.xsa",os = "linux",cpu = "psu_cortexa53",domain_name = "linux_psu_cortexa53",advanced_options = advanced_options)

platform = client.get_component(name="platform_a")
status = platform.build()

vitis.dispose()

