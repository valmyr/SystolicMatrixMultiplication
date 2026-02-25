# 2026-02-20T17:11:30.317348211
import vitis

client = vitis.create_client()
client.set_workspace(path="dma_test2")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="xaxidma_example_simple_poll")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

