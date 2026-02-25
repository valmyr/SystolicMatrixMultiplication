# 2026-02-20T20:23:18.011211429
import vitis

client = vitis.create_client()
client.set_workspace(path="dma_test2")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="xaxidma_example_simple_poll")
comp.build()

vitis.dispose()

