# 2026-02-20T19:01:52.383848497
import vitis

client = vitis.create_client()
client.set_workspace(path="dma_test2")

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

