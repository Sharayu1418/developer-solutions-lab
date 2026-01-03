from azure.kusto.data import KustoClient, KustoConnectionStringBuilder

cluster = "https://finops-nar-ade.centralus.kusto.windows.net"
database = "Hub"

kcsb = KustoConnectionStringBuilder.with_az_cli_authentication(cluster)
client = KustoClient(kcsb)

query = "Costs | take 5"
response = client.execute(database, query)

for row in response.primary_results[0]:
    print(row)