# 2026-01-01T11:36:45.376500765
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

comp = client.get_component(name="freertos_lwip_echo_server")
comp.build()

comp.build()

vitis.dispose()

