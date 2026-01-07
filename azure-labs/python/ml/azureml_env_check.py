from azure.identity import DefaultAzureCredential
from azure.mgmt.compute import ComputeManagementClient
from azure.mgmt.resource import ResourceManagementClient
import os

subscription_id = os.getenv("AZURE_SUBSCRIPTION_ID")
credentials = DefaultAzureCredential()

resource_client = ResourceManagementClient(credentials, subscription_id)
compute_client = ComputeManagementClient(credentials, subscription_id)

for rg in resource_client.resource_groups.list():
    print(f"Resource Group: {rg.name}")

for vm in compute_client.virtual_machines.list_all():
    print(f"VM: {vm.name} - Location: {vm.location}")