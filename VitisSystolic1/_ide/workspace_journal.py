# 2026-01-30T00:30:00.856522157
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisSystolic1")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="xllfifo_polling_example")
comp.build()

vitis.dispose()

