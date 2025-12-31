# 2025-12-21T12:10:16.644816771
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

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../TESTE_FINAL/Ethernet_ps/design_1_wrapper.xsa")

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

example_repo = client.get_example_repo(name="vitis_libraries")

example_repo.display_name = "Vitis Accelerated Libraries Repository"

example_repo.description = "The Vitis software development platform includes an extensive set of open-source, performance-optimized libraries that offer out-of-the-box acceleration with minimal to zero-code changes to your existing applications."

example_repo.local_directory = "/home/xmen/.Xilinx/Vitis/2025.2/vitis_libraries"

example_repo.type = "UNKNOWN"

example_repo.git_branch = "2025.2"

example_repo.git_url = "https://github.com/Xilinx/Vitis_Libraries.git"

status = client.update_example_repo(example_repo)

client.sync_git_example_repo(name="vitis_libraries")

client.sync_git_example_repo(name="vitis_libraries")

example_repo = client.get_example_repo(name="vitis_libraries")

example_repo.display_name = "Vitis Accelerated Libraries Repositoryaa"

example_repo.description = "The Vitis software development platform includes an extensive set of open-source, performance-optimized libraries that offer out-of-the-box acceleration with minimal to zero-code changes to your existing applications."

example_repo.local_directory = "/home/xmen/.Xilinx/Vitis/2025.2/vitis_libraries"

example_repo.type = "UNKNOWN"

example_repo.git_branch = "2025.2"

example_repo.git_url = "https://github.com/Xilinx/Vitis_Libraries.git"

status = client.update_example_repo(example_repo)

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

domain = platform.add_domain(cpu = "psu_cortexa53_2",os = "standalone",name = "aaa",display_name = "aaa",support_app = "hello_world",generate_dtb = False,hw_boot_bin = "")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../ZyqnIO_EThernet/export/ZyqnIO_EThernet/ZyqnIO_EThernet.xpfm",domain = "aaa",template = "hello_world")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="hello_world")
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

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="xgpio_low_level_example")
comp.build()

status = platform.build()

comp = client.get_component(name="xgpio_tapp_example")
comp.build()

status = platform.build()

comp = client.get_component(name="xgpio_low_level_example")
comp.build()

status = platform.build()

comp = client.get_component(name="xgpio_example")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

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

vitis.dispose()

