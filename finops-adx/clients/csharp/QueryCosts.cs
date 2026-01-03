using System;
using Kusto.Data;
using Kusto.Data.Net.Client;

var cluster = "https://finops-nar-ade.centralus.kusto.windows.net";
var database = "Hub";

var kcsb = new KustoConnectionStringBuilder(cluster)
    .WithAadAzureCliAuthentication();

using var client = KustoClientFactory.CreateCslQueryProvider(kcsb);

var query = "Costs | take 5";
using var reader = client.ExecuteQuery(database, query);

while (reader.Read())
{
    Console.WriteLine(reader[0]);
}