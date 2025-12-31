# 2025-12-28T00:39:46.437168061
import vitis

client = vitis.create_client()
client.set_workspace(path="ZynqIOEthernet")

vitis.dispose()

