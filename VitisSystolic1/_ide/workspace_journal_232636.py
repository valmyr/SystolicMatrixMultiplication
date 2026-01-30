# 2026-01-29T11:24:24.817211793
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisSystolic1")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

