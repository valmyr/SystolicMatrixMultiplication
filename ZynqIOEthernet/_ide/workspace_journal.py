# 2026-01-01T11:45:07.980620838
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

comp.build()

comp.build()

comp.build()

vitis.dispose()

