from azure.kusto.data import KustoClient, KustoConnectionStringBuilder

cluster = "https://<CLUSTER>.kusto.windows.net"
database = "Samples"
kcsb = KustoConnectionStringBuilder.with_aad_device_authentication(cluster)
client = KustoClient(kcsb)

query = "StormEvents | take 5"

response = client.execute(database, query)

for row in response.primary_results[0]:
    print(f"{row}")